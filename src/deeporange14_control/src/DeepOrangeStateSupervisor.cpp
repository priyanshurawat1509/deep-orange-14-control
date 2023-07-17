#include <deeporange14_control/DeepOrangeStateSupervisor.h>

namespace deeporange14 {

    DeepOrangeStateSupervisor::DeepOrangeStateSupervisor(ros::NodeHandle &nh, ros::NodeHandle &priv_nh) {
    
        // Instantiate sub/pubs       

        sub_missionStatus = nh.subscribe(std::string(topic_ns + "/mission_status"), 10, &DeepOrangeStateSupervisor::getMissionStatus, this, ros::TransportHints().tcpNoDelay(true));
        sub_stopros = nh.subscribe(std::string(topic_ns + "/stop_ros"), 10, &DeepOrangeStateSupervisor::getStopRos, this, ros::TransportHints().tcpNoDelay(true));
        sub_brakeStatus = nh.subscribe(std::string(topic_ns + "/cmd_brake_effort"), 10, &DeepOrangeStateSupervisor::getStackBrakeCmd, this, ros::TransportHints().tcpNoDelay(true));
        sub_rosController = nh.subscribe(std::string(topic_ns + "/cmd_trq"), 10, &DeepOrangeStateSupervisor::getTorqueValues, this, ros::TransportHints().tcpNoDelay(true));
        sub_raptorState = nh.subscribe(std::string(topic_ns + "/raptor_state"), 10, &DeepOrangeStateSupervisor::getRaptorMsg, this, ros::TransportHints().tcpNoDelay(true));
        sub_cmdvel = nh.subscribe(std::string(topic_ns + "/cmd_vel"), 10, &DeepOrangeStateSupervisor::checkStackStatus, this, ros::TransportHints().tcpNoDelay(true));
        pub_mobility = nh.advertise<deeporange14_msgs::MobilityMsg>(std::string(topic_ns +"/cmd_mobility"), 10, this);

        /* Initiate ROS State with a Startup state to be safe. This state will be published till the ...
        timer object intentionally changes it.Default Node is On and it is running continuously in linux service*/

        state = AU_1_STARTUP; 
        raptor_hb_fail = true;
        stack_fault = true;
        dbwmode_disable = false;
        mission_status = "";
        cmd_brake_effort = 0.0;
        cmd_trq_left = 0.0;
        cmd_trq_right = 0.0;
        stop_ros = false;
        raptorbrakeAck = false;
        system_state = 2;

        mobilityMsg.left_torque_cmd = 0.0;
        mobilityMsg.right_torque_cmd = 0.0;
        mobilityMsg.brake_effort = 1.0;
        mobilityMsg.au_state = state;

        start_timer = ros::Time::now().toSec();

        priv_nh.getParam("cmdvel_cutoff", cmdvel_cutoff);
        priv_nh.getParam("raptorhb_cutoff", raptorhb_cutoff);
        priv_nh.getParam("update_freq", update_freq);

        // Set up Timer - with calback to publish ROS state all the time that the node is running
        timer = nh.createTimer(ros::Duration(1.0 / update_freq), &DeepOrangeStateSupervisor::publishROSState, this);
        
    }
    DeepOrangeStateSupervisor::~DeepOrangeStateSupervisor(){}

    void DeepOrangeStateSupervisor::checkStackStatus(const geometry_msgs::Twist::ConstPtr& cmdVelMsg){
        cmdvel_timestamp = ros::Time::now().toSec(); 
        // ROS_WARN("cmd_vel timestamp : %f",cmdvel_timestamp); 
    }
    void DeepOrangeStateSupervisor::getMissionStatus(const deeporange14_msgs::MissionStatus::ConstPtr& missionStatus){
        mission_status = missionStatus->status;
    }   
    void DeepOrangeStateSupervisor::getStackBrakeCmd(const std_msgs::Float32::ConstPtr& brakeEffort){
        cmd_brake_effort = brakeEffort->data;
    }       
    void DeepOrangeStateSupervisor::getTorqueValues(const deeporange14_msgs::TorqueValuesMsg::ConstPtr& trqValues){
        cmd_trq_left = trqValues->left_torque_cmd;
        cmd_trq_right = trqValues->right_torque_cmd;
    }
    void DeepOrangeStateSupervisor::getStopRos(const std_msgs::Bool::ConstPtr& stopRosMsg){
        stop_ros = stopRosMsg->data;
    }
    void DeepOrangeStateSupervisor::getRaptorMsg(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorMsg){
        raptor_hb_timestamp = raptorMsg->header.stamp.sec + raptorMsg->header.stamp.nsec*(1e-9);  
        system_state = raptorMsg->system_state;
        dbwmode_disable = raptorMsg->dbw_mode != 3;
        raptorbrakeAck = raptorMsg->brake_enable_status;        
    }
 
    void DeepOrangeStateSupervisor::publishROSState(const ros::TimerEvent& event)
    {
        /* Always continue to publish ROS state  */
        stack_fault = (std::abs(cmdvel_timestamp - ros::Time::now().toSec()) > cmdvel_cutoff);

        // ROS_WARN("time diff : %f",(std::abs(cmdvel_timestamp - ros::Time::now().toSec()))); 
        raptor_hb_fail = (std::abs(raptor_hb_timestamp - ros::Time::now().toSec()) > raptorhb_cutoff);
        // ROS_WARN("raptorHs fail timestmp %f",raptor_hb_timestamp);

        DeepOrangeStateSupervisor::updateROSStateMsg();
        mobilityMsg.au_state = state;
        pub_mobility.publish(mobilityMsg);
    }

    void DeepOrangeStateSupervisor::updateROSStateMsg(){

        switch(state){

            case AU_1_STARTUP:{

                mobilityMsg.left_torque_cmd = 0.0;
                mobilityMsg.right_torque_cmd = 0.0;
                mobilityMsg.brake_effort = 1.0;
                ROS_WARN("In startup");

                if(!raptor_hb_fail){ 

                    state = AU_2_IDLE;

                    break;

                }else{
                    state = AU_1_STARTUP;
                    ROS_WARN("WARN:[AU_1_STARTUP: RaptorHandshake not established");
                    break;
                }
                
            }
            
            case AU_2_IDLE:{

                mobilityMsg.left_torque_cmd = 0.0;
                mobilityMsg.right_torque_cmd = 0.0;
                mobilityMsg.brake_effort = 1.0;

                ROS_WARN("In Idle");


                if (!raptor_hb_fail && system_state == 8 && !dbwmode_disable){
                    state = AU_3_WAIT_EXECUTION;
                    break;
                    
                }
                else if(raptor_hb_fail){
                    state = AU_1_STARTUP;
                    ROS_ERROR ("ERROR: [AU_2_IDLE]: RaptorHandshake failed ");
                    break;
                }

                else if (system_state != 8 or dbwmode_disable){
                    state = AU_2_IDLE;
                    ROS_ERROR ("ERROR: [AU_2_IDLE]: SystemState not 8 or dbw mode not 3 ");
                    break;
                }


            }
            case AU_3_WAIT_EXECUTION:{

                mobilityMsg.left_torque_cmd = 0.0;
                mobilityMsg.right_torque_cmd = 0.0;
                mobilityMsg.brake_effort = 1.0; // Also check from stack if brake_enable command from stack should be true


                if(!raptor_hb_fail && !dbwmode_disable && !stack_fault && cmd_brake_effort && mission_status =="executedNav" && !stop_ros){
                    state = AU_4_EXEC_IMINENT;
                    mobilityMsg.brake_effort = cmd_brake_effort;
                    break;
                }

                else if (raptor_hb_fail){
                    state = AU_1_STARTUP;
                    ROS_ERROR ("ERROR:[AU_3_WAIT_EXECUTION]: RaptorHandshake failed ");
                    break;
                }
                else if(dbwmode_disable){
                    state = AU_2_IDLE;


                    ROS_ERROR("ERROR: [AU_3_WAIT_EXECUTION]: Out of dbwMode ");
                    break;                    
                }
                else if (stack_fault){
                    state = AU_2_IDLE;
                    ROS_ERROR("ERROR: [AU_3_WAIT_EXECUTION]:Stack Crashed or failed ");
                    break;
                    
                }
                else if(stop_ros){
                    //  go backuint8 left_brkPressure
                    state = AU_2_IDLE;
                    ROS_WARN("Warning: [AU_3_WAIT_EXECUTION]:stop button is pressed ");
                    break;
                }

                else if(!cmd_brake_effort){
                    state=AU_3_WAIT_EXECUTION;
                    mobilityMsg.brake_effort = cmd_brake_effort;            
                    ROS_ERROR("ERROR: [AU_3_WAIT_EXECUTION]:Stack should not disable brakes by now, brk enable should be false, meaning dont enable brakes yet");
                    break;
                }
                else if(mission_status != "executedNav"){
                    state = AU_3_WAIT_EXECUTION;
                    ROS_WARN("Warning: [AU_3_WAIT_EXECUTION]:execute button is not pressed yet or mission status incorrect");
                    break;
                }


            }
            case AU_4_EXEC_IMINENT:{

                mobilityMsg.left_torque_cmd = cmd_trq_left;
                mobilityMsg.right_torque_cmd = cmd_trq_right;
                mobilityMsg.brake_effort = 0.0; // Also check from stack if brake_enable command is false from stack,
                //  because now global plan is ready and brakes should be disengaged
                if(!raptor_hb_fail && !dbwmode_disable && !stack_fault && !cmd_brake_effort && mission_status =="globalPlanReady"&& !stop_ros){
                        state = AU_5_DISENGAGED_BRAKE;
                        mobilityMsg.brake_effort = cmd_brake_effort;
                        break;
                }

                else if (raptor_hb_fail){
                    state = AU_1_STARTUP;
                    ROS_ERROR ("ERROR: [AU_4_EXEC_IMINENT]:RaptorHandshake failed ");
                    break;
                }
                else if(dbwmode_disable){
                    state = AU_2_IDLE;
                    ROS_ERROR("ERROR:[AU_4_EXEC_IMINENT]: Out of dbwMode ");
                    break;                    
                }
                else if (stack_fault){
                    state = AU_2_IDLE;
                    ROS_ERROR("ERROR: [AU_4_EXEC_IMINENT]:Stack Crashed or failed ");
                    break;
                    
                }
                else if(stop_ros){
                    //  go back to idle
                    state = AU_2_IDLE;
                    ROS_WARN("Warning: [AU_4_EXEC_IMINENT]:stop button is pressed ");
                    break;
                }
                else if(cmd_brake_effort ){
                    state = AU_4_EXEC_IMINENT;
                    mobilityMsg.brake_effort = cmd_brake_effort;
                    ROS_WARN("Warning: [AU_4_EXEC_IMINENT]:Brakes from stack side are still enabled, they need to be disabled by now");
                    break;
                }

                else if(mission_status != "globalPlanReady"){
                    ROS_INFO("My variable value: %s", mission_status.c_str());
                    state = AU_4_EXEC_IMINENT;
                    ROS_WARN("Warning: [AU_4_EXEC_IMINENT]:Execute button pressed but global plan not ready yet");
                    break;
                }

                      
            }

            case AU_5_DISENGAGED_BRAKE:{
                mobilityMsg.left_torque_cmd = cmd_trq_left;
                mobilityMsg.right_torque_cmd = cmd_trq_right;
                mobilityMsg.brake_effort = 0.0; // Also check from stack if brake command is true from stack

                if(!raptor_hb_fail && !dbwmode_disable && !stack_fault && !cmd_brake_effort && !raptorbrakeAck && mission_status =="BrakesDisengaging"&& !stop_ros ){
                        state = AU_6_COMMAND_TORQUES;
                        mobilityMsg.brake_effort = cmd_brake_effort;
                        break;
                }

                else if (raptor_hb_fail){
                    state = AU_1_STARTUP;
                    ROS_ERROR ("ERROR: [AU_5_DISENGAGED_BRAKE]:RaptorHandshake failed ");
                    break;
                }
                else if(dbwmode_disable){
                    state = AU_2_IDLE;
                    ROS_ERROR("ERROR: [AU_5_DISENGAGED_BRAKE]:Out of dbwMode ");
                    break;                    
                }
                else if (stack_fault){
                    state = AU_2_IDLE;
                    ROS_ERROR("ERROR: [AU_5_DISENGAGED_BRAKE]:Stack Crashed or failed ");
                    break;
                    
                }
                else if(stop_ros){
                    //  go back to idle
                    state = AU_2_IDLE;
                    ROS_WARN("Warning: [AU_5_DISENGAGED_BRAKE]:stop button is pressed ");
                    break;
                }
                else if(cmd_brake_effort ){
                    state = AU_5_DISENGAGED_BRAKE;
                    mobilityMsg.brake_effort = cmd_brake_effort;
                    ROS_WARN("Warning: [AU_5_DISENGAGED_BRAKE]:Brakes enable command from stack is True, it should be false, they need to be disengaged by now");
                    break;
                }
                else if(raptorbrakeAck){
                    state = AU_5_DISENGAGED_BRAKE;
                    ROS_WARN("Warning: [AU_5_DISENGAGED_BRAKE]:Raptor brakes disengaged acknowledgement not received !");
                    break;
                }

                else if(mission_status != "BrakesDisengaging"){
                    state = AU_5_DISENGAGED_BRAKE;
                    ROS_WARN("Warning: [AU_5_DISENGAGED_BRAKE]:Execute button pressed but global plan not ready yet");
                    break;
                }



            }                
            
            case AU_6_COMMAND_TORQUES:{ 

                while(!raptor_hb_fail && !dbwmode_disable && !stack_fault && !cmd_brake_effort && mission_status =="CommandingTorques"&& !stop_ros){          
                    
                    state = AU_6_COMMAND_TORQUES;
                    mobilityMsg.left_torque_cmd = cmd_trq_left;
                    mobilityMsg.right_torque_cmd = cmd_trq_right;
                    mobilityMsg.brake_effort = cmd_brake_effort;
                    // Call velcityController->commandTorques method with arguments 
                    ROS_WARN("Warning: [AU_6_COMMAND_TORQUES]:Commanding torques");
                    if (mission_status == "MissionCompleted" or mission_status == "MissionCancelled"){
                        state = AU_7_SAFE_STOP;
                        ROS_WARN("Warning: [AU_6_COMMAND_TORQUES]:Initiating safe stop");
                        break;
                    }
                    
                }

                if (raptor_hb_fail){
                    state = AU_1_STARTUP;
                    ROS_ERROR ("ERROR: [AU_6_COMMAND_TORQUES]: RaptorHandshake failed ");
                    break;
                }
                else if(dbwmode_disable){
                    state = AU_2_IDLE;
                    ROS_ERROR("ERROR: [AU_6_COMMAND_TORQUES]:Out of dbwMode ");
                    break;                    
                }
                else if (stack_fault){
                    state = AU_2_IDLE;
                    ROS_ERROR("ERROR: [AU_6_COMMAND_TORQUES]: Stack Crashed or failed ");
                    break;
                    
                }
                else if(stop_ros){
                    //  go back to idle
                    state = AU_2_IDLE;
                    ROS_WARN("Warning: [AU_6_COMMAND_TORQUES]:stop button is pressed ");
                    break;
                }
                else if(cmd_brake_effort ){
                    state = AU_5_DISENGAGED_BRAKE;
                    mobilityMsg.brake_effort = cmd_brake_effort;
                    ROS_WARN("Warning: [AU_6_COMMAND_TORQUES]: Brakes enable command from stack is True, it should be false, they need to be disengaged by now");
                    break;
                }

                else if(mission_status != "CommandingTorques"){
                    state = AU_6_COMMAND_TORQUES;
                    ROS_WARN("Warning: [AU_6_COMMAND_TORQUES]:Mission status not changed to commanding torques from stack side");
                    break;
                }


            }
             
            case AU_7_SAFE_STOP:{

                if(!raptor_hb_fail && !dbwmode_disable && !stack_fault && cmd_brake_effort && mission_status =="MissionCompleted" or mission_status == "MissionCancelled" && !stop_ros){
                    state = AU_2_IDLE;
                    mobilityMsg.brake_effort = cmd_brake_effort;
                    ROS_WARN("Warning: [AU_7_SAFE_STOP]:In safe stop");             
                }

                else if (raptor_hb_fail){
                    state = AU_1_STARTUP;
                    ROS_ERROR ("ERROR: [AU_7_SAFE_STOP]:RaptorHandshake failed ");
                    break;
                }
                else if(dbwmode_disable){
                    state = AU_2_IDLE;
                    ROS_ERROR("ERROR: [AU_7_SAFE_STOP]: Out of dbwMode ");
                    break;                    
                }
                else if (stack_fault){
                    state = AU_2_IDLE;
                    ROS_ERROR("ERROR: [AU_7_SAFE_STOP]: Stack Crashed or failed ");
                    break;
                    
                }
                else if(stop_ros){
                    //  go back to idle
                    state = AU_2_IDLE;
                    ROS_WARN("Warning: [AU_7_SAFE_STOP]:stop button is pressed ");
                    break;
                }
                else if(!cmd_brake_effort ){
                    state = AU_5_DISENGAGED_BRAKE;
                    mobilityMsg.brake_effort = cmd_brake_effort;
                    ROS_WARN("Warning: [AU_7_SAFE_STOP]:Brakes enable command from stack is False, it should be true, they need to be disengaged by now");
                    break;
                }

                else if(mission_status != "MissionCompleted" or mission_status != "MissionCancelled" ){
                    state = AU_7_SAFE_STOP;
                    ROS_WARN("Warning: [AU_7_SAFE_STOP]: Mission status not changed to completed or cancelled from stack side");
                    break;
                }


            }
            case AU_200_FAULT:
                ROS_ERROR("[AU98_Fault_state] : remain in fault");
                break;

            default:
                std::cout << "Unknown state" << std::endl;
                break;
             
            }   

        } 
    }

    