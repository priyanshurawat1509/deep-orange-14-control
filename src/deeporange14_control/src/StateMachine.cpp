#include <deeporange14_control/StateMachine.h>

namespace deeporange14 {

    StateMachine::StateMachine(ros::NodeHandle &nh, ros::NodeHandle &priv_nh) {
        //  Initialize Velocity Controller object
        // Instantiate sub/pubs
        sub_raptorhsfail = nh.subscribe(std::string(topic_ns + "/raptor_handshake_fail"), 10, &StateMachine::getHanshakeFailed, this, ros::TransportHints().tcpNoDelay(true));
        sub_stackfault = nh.subscribe(std::string(topic_ns + "/stack_fault"), 10, &StateMachine::getStackFault, this, ros::TransportHints().tcpNoDelay(true));
        sub_dbwmode = nh.subscribe(std::string(topic_ns + "/dbw_mode_disabled"), 10, &StateMachine::getDbwModedisabled, this, ros::TransportHints().tcpNoDelay(true));
        sub_brkAck = nh.subscribe(std::string(topic_ns + "/brake_ack_raptor"),10, &StateMachine::getRaptorBrakeStatus, this, ros::TransportHints().tcpNoDelay(true));
        sub_missionStatus = nh.subscribe(std::string(topic_ns + "/missionstatus"), 10, &StateMachine::getMissionStatus, this, ros::TransportHints().tcpNoDelay(true));
        sub_brakeStatus = nh.subscribe(std::string(topic_ns + "/brake_enable"), 10, &StateMachine::getBrakeEnable, this, ros::TransportHints().tcpNoDelay(true));
        sub_rosController = nh.subscribe(std::string(topic_ns + "/cmd_trq"), 10, &StateMachine::getTorqueValues, this, ros::TransportHints().tcpNoDelay(true));
        sub_rosStop = nh.subscribe(std::string(topic_ns + "/exit_ROS"), 10, &StateMachine::getStopRos, this, ros::TransportHints().tcpNoDelay(true));
        sub_raptorState = nh.subscribe(std::string(topic_ns + "/raptor_state"), 10, &StateMachine::getRaptorMsg, this, ros::TransportHints().tcpNoDelay(true));
        
        pub_mobility = nh.advertise<deeporange14_msgs::MobilityMsg>(std::string(topic_ns +"/cmd_mobility"), 10, this);

        /* Initiate ROS State with a Startup state to be safe. This state will be published till the ...
        timer object intentionally changes it.Default Node is On and it is running continuously in linux service*/

        state = AU1_STARTUP; 
        raptorhs_fail = false;
        stack_fault = false;
        dbwmode_disable = false;
        mission_status = "";
        brake_enable_stack = true;
        l_torque = 0.0;
        r_torque = 0.0;
        stop_ros = false;
        raptorbrakeAck = false;
        system_state = 2;
        dbw_mode = 1;

        mobilityMsg.left_torque = 0.0;
        mobilityMsg.right_torque = 0.0;
        mobilityMsg.brake_enable = true;
        mobilityMsg.au_state = state;

        // Set up Timer - with calback to publish ROS state all the time that the node is running
        timer = nh.createTimer(ros::Duration(1.0 / 20.0), &StateMachine::publishROSState, this);
        
    }
    StateMachine::~StateMachine(){}

    void StateMachine::getHanshakeFailed(const std_msgs::Bool::ConstPtr& _){
        raptorhs_fail = _->data; 
    }

    void StateMachine::getStackFault(const std_msgs::Bool::ConstPtr& stackfault){
        stack_fault = stackfault->data;
    }
    void StateMachine::getDbwModedisabled(const std_msgs::Bool::ConstPtr& dbwmode){
        dbwmode_disable = dbwmode->data;
    }
    void StateMachine::getRaptorBrakeStatus(const std_msgs::Bool::ConstPtr& raptorbrakeAckMsg){
        raptorbrakeAck = raptorbrakeAckMsg->data;
    }
    void StateMachine::getMissionStatus(const deeporange14_msgs::MissionStatus::ConstPtr& missionStatus){
        mission_status = missionStatus->status;
        stop_ros = missionStatus->stop_ros;
    }   
    void StateMachine::getBrakeEnable(const std_msgs::Bool::ConstPtr& brakeEnable){
        brake_enable_stack = brakeEnable->data;
    }       
    void StateMachine::getTorqueValues(const deeporange14_msgs::TorqueValuesMsg::ConstPtr& trqvalues){
        l_torque = trqvalues->left_torque;
        r_torque = trqvalues->right_torque;
    }
    void StateMachine::getStopRos(const std_msgs::Bool::ConstPtr& StopRos){
        stop_ros = StopRos->data;
    }
    void StateMachine::getRaptorMsg(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorMsg){
        system_state = raptorMsg->system_state;
        dbw_mode = raptorMsg->dbw_mode;
       
    }
 
    void StateMachine::publishROSState(const ros::TimerEvent& event)
    {
        /* Always continue to publish ROS state  */

        StateMachine::updateROSStateMsg();
        pub_mobility.publish(mobilityMsg);
    }

    void StateMachine::updateROSStateMsg(){

        switch(state){

            case AU1_STARTUP:{

                mobilityMsg.left_torque = 0.0;
                mobilityMsg.right_torque = 0.0;
                mobilityMsg.brake_enable = true;
                mobilityMsg.au_state = state;
                pub_mobility.publish(mobilityMsg);

                ros::Time first_time_counter = ros::Time::now();

                if(!raptorhs_fail){
                    // Raptor Handshake established
                    state = AU2_IDLE;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    break;

                }else{
                    // keep checking for 3 secs 
                    // if still not after 3 sec give Error
                    while(std::abs(first_time_counter.toSec())- ros::Time::now().toSec()<= 3){ // allow 3 seconds to 
                        
                        if (!raptorhs_fail){
                            //Raptor Handshake established
                            state = AU2_IDLE;
                            mobilityMsg.au_state = state;                           
                            pub_mobility.publish(mobilityMsg);
                            break;
                        }  
                        ROS_WARN("Warning: RaptorHandshake checking");  
                    }
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR("ERROR: RaptorHandshake not established");

                }
            }
            
            case AU2_IDLE:{

                mobilityMsg.left_torque = 0.0;
                mobilityMsg.right_torque = 0.0;
                mobilityMsg.brake_enable = true;
                mobilityMsg.au_state = state;
                pub_mobility.publish(mobilityMsg);

                if (!raptorhs_fail && system_state == 8 && dbw_mode == 3){
                    state = AU3_WAIT_EXECUTION;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    break;
                    
                }
                else if(raptorhs_fail){
                    state = AU1_STARTUP;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR ("ERROR: RaptorHandshake failed ");
                    break;
                }
                else if (system_state != 8 or dbw_mode != 3){
                    state = AU2_IDLE;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR ("ERROR: SystemState not 8 or dbw mode not 3");
                    break;
                }
                // pub_mobility.publish(mobilityMsg);
                // break;

            }
            case AU3_WAIT_EXECUTION:{

                mobilityMsg.left_torque = 0.0;
                mobilityMsg.right_torque = 0.0;
                mobilityMsg.brake_enable = true; // Also check from stack if brake_enable command from stack should be true
                mobilityMsg.au_state = state;
                pub_mobility.publish(mobilityMsg);

                if(!raptorhs_fail && !dbwmode_disable && !stack_fault && brake_enable_stack && mission_status =="executedNav" && !stop_ros){
                    state = AU4_EXEC_IMINENT;
                    mobilityMsg.brake_enable = brake_enable_stack;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    break;
                }

                else if (raptorhs_fail){
                    state = AU1_STARTUP;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR ("ERROR: RaptorHandshake failed ");
                    break;
                }
                else if(dbwmode_disable){
                    state = AU2_IDLE;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR("ERROR: Out of dbwMode ");
                    break;                    
                }
                else if (stack_fault){
                    state = AU2_IDLE;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR("ERROR: Stack Crashed or failed ");
                    break;
                    
                }

                else if(!brake_enable_stack){
                    state=AU3_WAIT_EXECUTION;
                    mobilityMsg.brake_enable = brake_enable_stack;
                    mobilityMsg.au_state = state;                   
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR("ERROR: Stack should not disable brakes by now, brk enable should be false, meaning dont enable brakes yet");
                    break;
                }
                else if(mission_status != "executedNav"){
                    state = AU3_WAIT_EXECUTION;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: execute button is not pressed yet");
                    break;
                }
                else if(stop_ros){
                    //  go back to idle
                    state = AU2_IDLE;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: stop button is pressed ");
                    break;
                }

            }
            case AU4_EXEC_IMINENT:{

                mobilityMsg.left_torque = 0.0;
                mobilityMsg.right_torque = 0.0;
                mobilityMsg.brake_enable = true; // Also check from stack if brake_enable command is false from stack,
                //  because now global plan is ready and brakes should be disengaged
                mobilityMsg.au_state = state;
                pub_mobility.publish(mobilityMsg);     

                if(!raptorhs_fail && !dbwmode_disable && !stack_fault && !brake_enable_stack && mission_status =="globalPlanReady"&& !stop_ros){
                        state = AU4_EXEC_IMINENT;
                        mobilityMsg.brake_enable = brake_enable_stack;
                        mobilityMsg.au_state = state;
                        pub_mobility.publish(mobilityMsg);
                        break;
                }

                else if (raptorhs_fail){
                    state = AU1_STARTUP;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR ("ERROR: RaptorHandshake failed ");
                    break;
                }
                else if(dbwmode_disable){
                    state = AU2_IDLE;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR("ERROR: Out of dbwMode ");
                    break;                    
                }
                else if (stack_fault){
                    state = AU2_IDLE;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR("ERROR: Stack Crashed or failed ");
                    break;
                    
                }
                else if(brake_enable_stack ){
                    state = AU4_EXEC_IMINENT;
                    mobilityMsg.brake_enable = brake_enable_stack;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: Brakes are still enabled, they need to be disabled by now");
                    break;
                }
                else if(mission_status != "globalPlanReady"){
                    state = AU4_EXEC_IMINENT;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: Execute button pressed but global plan not ready yet");
                    break;
                }
                else if(stop_ros){
                    //  go back to idle
                    state = AU2_IDLE;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: stop button is pressed ");
                    break;
                }
                      
            }

            case AU5_DISENGAGED_BRAKE:{
                mobilityMsg.left_torque = 0.0;
                mobilityMsg.right_torque = 0.0;
                mobilityMsg.brake_enable = false; // Also check from stack if brake command is true from stack
                mobilityMsg.au_state = state;
                pub_mobility.publish(mobilityMsg);     

                if(!raptorhs_fail && !dbwmode_disable && !stack_fault && !brake_enable_stack && raptorbrakeAck && mission_status =="BrakesDisengaging"&& !stop_ros ){
                        state = AU4_EXEC_IMINENT;
                        mobilityMsg.brake_enable = brake_enable_stack;
                        mobilityMsg.au_state = state;
                        pub_mobility.publish(mobilityMsg);
                        break;
                }

                else if (raptorhs_fail){
                    state = AU1_STARTUP;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR ("ERROR: RaptorHandshake failed ");
                    break;
                }
                else if(dbwmode_disable){
                    state = AU2_IDLE;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR("ERROR: Out of dbwMode ");
                    break;                    
                }
                else if (stack_fault){
                    state = AU2_IDLE;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR("ERROR: Stack Crashed or failed ");
                    break;
                    
                }
                else if(brake_enable_stack ){
                    state = AU5_DISENGAGED_BRAKE;
                    mobilityMsg.brake_enable = brake_enable_stack;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: Brakes enable command from stack is True, it should be false, they need to be disengaged by now");
                    break;
                }
                else if(raptorbrakeAck){
                    state = AU5_DISENGAGED_BRAKE;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: Raptor brakes disengaged acknowledgement not received !");
                    break;
                }

                else if(mission_status != "BrakesDisengaging"){
                    state = AU5_DISENGAGED_BRAKE;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: Execute button pressed but global plan not ready yet");
                    break;
                }

                else if(stop_ros){
                    //  go back to idle
                    state = AU2_IDLE;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: stop button is pressed ");
                    break;
                }

            }                
            
            case AU6_COMMAND_TORQUES:{ 

                while(!raptorhs_fail && !dbwmode_disable && !stack_fault && !brake_enable_stack && mission_status =="CommandingTorques"&& !stop_ros){
                    state = AU6_COMMAND_TORQUES;
                    mobilityMsg.brake_enable = brake_enable_stack;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    // Call velcityController->commandTorques method with arguments 
                    if (mission_status == "MissionCompleted" or mission_status == "MissionCancelled"){
                        state = AU7_SAFE_STOP;
                        mobilityMsg.au_state = state;
                        pub_mobility.publish(mobilityMsg);
                        break;
                    }
                    
                }

                if (raptorhs_fail){
                    state = AU1_STARTUP;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR ("ERROR: RaptorHandshake failed ");
                    break;
                }
                else if(dbwmode_disable){
                    state = AU2_IDLE;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR("ERROR: Out of dbwMode ");
                    break;                    
                }
                else if (stack_fault){
                    state = AU2_IDLE;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR("ERROR: Stack Crashed or failed ");
                    break;
                    
                }
                else if(brake_enable_stack ){
                    state = AU5_DISENGAGED_BRAKE;
                    mobilityMsg.brake_enable = brake_enable_stack;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: Brakes enable command from stack is True, it should be false, they need to be disengaged by now");
                    break;
                }

                else if(mission_status != "CommandingTorques"){
                    state = AU6_COMMAND_TORQUES;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: Mission status not changed to commanding torques from stack side");
                    break;
                }

                else if(stop_ros){
                    //  go back to idle
                    state = AU2_IDLE;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: stop button is pressed ");
                    break;
                }
            }
             
            case AU7_SAFE_STOP:{

                if(!raptorhs_fail && !dbwmode_disable && !stack_fault && brake_enable_stack && mission_status =="MissionCompleted" or mission_status == "MissionCancelled" && !stop_ros){
                    state = AU2_IDLE;
                    mobilityMsg.brake_enable = brake_enable_stack;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);                    
                }

                else if (raptorhs_fail){
                    state = AU1_STARTUP;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR ("ERROR: RaptorHandshake failed ");
                    break;
                }
                else if(dbwmode_disable){
                    state = AU2_IDLE;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR("ERROR: Out of dbwMode ");
                    break;                    
                }
                else if (stack_fault){
                    state = AU2_IDLE;
                    mobilityMsg.au_state = AU98_FAULT;
                    pub_mobility.publish(mobilityMsg);
                    ROS_ERROR("ERROR: Stack Crashed or failed ");
                    break;
                    
                }
                else if(!brake_enable_stack ){
                    state = AU5_DISENGAGED_BRAKE;
                    mobilityMsg.brake_enable = brake_enable_stack;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: Brakes enable command from stack is False, it should be true, they need to be disengaged by now");
                    break;
                }

                else if(mission_status != "MissionCompleted" or mission_status != "MissionCancelled" ){
                    state = AU7_SAFE_STOP;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: Mission status not changed to completed or cancelled from stack side");
                    break;
                }

                else if(stop_ros){
                    //  go back to idle
                    state = AU2_IDLE;
                    mobilityMsg.au_state = state;
                    pub_mobility.publish(mobilityMsg);
                    ROS_WARN("Warning: stop button is pressed ");
                    break;
                }
            }
             
            }   

        } 
    }

    