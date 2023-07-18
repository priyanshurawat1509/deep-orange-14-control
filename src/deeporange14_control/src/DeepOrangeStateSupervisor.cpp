#include <deeporange14_control/DeepOrangeStateSupervisor.h>

namespace deeporange14
{

    DeepOrangeStateSupervisor::DeepOrangeStateSupervisor(ros::NodeHandle &nh, ros::NodeHandle &priv_nh)
    {

        // Instantiate sub/pubs

        sub_missionStatus = nh.subscribe(std::string(topic_ns + "/mission_status"), 10, &DeepOrangeStateSupervisor::getMissionStatus, this, ros::TransportHints().tcpNoDelay(true));
        sub_stopros = nh.subscribe(std::string(topic_ns + "/stop_ros"), 10, &DeepOrangeStateSupervisor::getStopRos, this, ros::TransportHints().tcpNoDelay(true));
        sub_brakeStatus = nh.subscribe(std::string(topic_ns + "/cmd_brake_effort"), 10, &DeepOrangeStateSupervisor::getStackBrakeCmd, this, ros::TransportHints().tcpNoDelay(true));
        sub_rosController = nh.subscribe(std::string(topic_ns + "/cmd_trq"), 10, &DeepOrangeStateSupervisor::getTorqueValues, this, ros::TransportHints().tcpNoDelay(true));
        sub_raptorState = nh.subscribe(std::string(topic_ns + "/raptor_state"), 10, &DeepOrangeStateSupervisor::getRaptorMsg, this, ros::TransportHints().tcpNoDelay(true));
        sub_cmdvel = nh.subscribe(std::string(topic_ns + "/cmd_vel"), 10, &DeepOrangeStateSupervisor::checkStackStatus, this, ros::TransportHints().tcpNoDelay(true));
        pub_mobility = nh.advertise<deeporange14_msgs::MobilityMsg>(std::string(topic_ns + "/cmd_mobility"), 10, this);

        /* Initiate ROS State with a Startup state to be safe. This state will be published till the ...
        timer object intentionally changes it.Default Node is On and it is running continuously in linux service*/

        state = AU_0_DEFAULT;
        raptor_hb_detected = false;
        stack_fault = true;
        dbw_ros_mode = false;
        mission_status = "";
        cmd_brake_effort = 0.0;
        tqL_cmd_controller = 0.0;
        tqR_cmd_controller = 0.0;
        stop_ros = false;
        raptorbrakeAck = false;

        mobilityMsg.tqL_cmd = 0.0;
        mobilityMsg.tqR_cmd = 0.0;
        mobilityMsg.brkL_cmd = 1.0;
        mobilityMsg.brkR_cmd = 1.0;
        mobilityMsg.au_state = state;

        priv_nh.getParam("cmdvel_cutoff", cmdvel_cutoff);
        priv_nh.getParam("raptorhb_cutoff", raptorhb_cutoff);
        priv_nh.getParam("update_freq", update_freq);

        // Set up Timer - with calback to publish ROS state all the time that the node is running
        timer = nh.createTimer(ros::Duration(1.0 / update_freq), &DeepOrangeStateSupervisor::supervisorControlUpdate, this);
    }
    DeepOrangeStateSupervisor::~DeepOrangeStateSupervisor() {}

    void DeepOrangeStateSupervisor::checkStackStatus(const geometry_msgs::Twist::ConstPtr &cmdVelMsg)
    {
        cmdvel_timestamp = ros::Time::now().toSec();
        // ROS_WARN("cmd_vel timestamp : %f",cmdvel_timestamp);
    }
    void DeepOrangeStateSupervisor::getMissionStatus(const deeporange14_msgs::MissionStatus::ConstPtr &missionStatus)
    {
        mission_status = missionStatus->status;
    }
    void DeepOrangeStateSupervisor::getStackBrakeCmd(const deeporange14_msgs::BrakePressureCmd::ConstPtr &brakeEffort)
    {
        cmd_brake_effort = brakeEffort->brkL_cmd && brakeEffort->brkR_cmd; // be false when brake press = 0.0

    }
    void DeepOrangeStateSupervisor::getTorqueValues(const deeporange14_msgs::TorqueCmdStamped::ConstPtr &controllerTrqValues)
    {
        tqL_cmd_controller  = controllerTrqValues->tqL_cmd;
        tqR_cmd_controller = controllerTrqValues->tqR_cmd;
    }
    void DeepOrangeStateSupervisor::getStopRos(const std_msgs::Bool::ConstPtr &stopRosMsg)
    {
        stop_ros = stopRosMsg->data;
    }
    void DeepOrangeStateSupervisor::getRaptorMsg(const deeporange14_msgs::RaptorStateMsg::ConstPtr &raptorMsg)
    {
        raptor_hb_timestamp = raptorMsg->header.stamp.sec + raptorMsg->header.stamp.nsec * (1e-9);
        dbw_ros_mode = raptorMsg->dbw_mode == DBW_3_ROS_EN;
        raptorbrakeAck = raptorMsg->brake_enable_status;
    }

    void DeepOrangeStateSupervisor::supervisorControlUpdate(const ros::TimerEvent &event)
    {
        /* Always continue to publish ROS state  */
        stack_fault = (std::abs(cmdvel_timestamp - ros::Time::now().toSec()) > cmdvel_cutoff);
        // ROS_WARN("time diff : %f",(std::abs(cmdvel_timestamp - ros::Time::now().toSec())));
        raptor_hb_detected = (std::abs(raptor_hb_timestamp - ros::Time::now().toSec()) < raptorhb_cutoff);
        // ROS_WARN("raptorHs fail timestmp %f",raptor_hb_timestamp);

        DeepOrangeStateSupervisor::updateROSStateMsg();
        mobilityMsg.au_state = state;
        pub_mobility.publish(mobilityMsg);
    }

    void DeepOrangeStateSupervisor::updateROSStateMsg()
    {

        switch (state)
        {

        case AU_0_DEFAULT:
        {
            state = AU_1_STARTUP;
            break;
        }
        case AU_1_STARTUP:
        {
            mobilityMsg.tqL_cmd = 0.0;
            mobilityMsg.tqR_cmd = 0.0;
            mobilityMsg.brkL_cmd = 1.0;
            mobilityMsg.brkR_cmd = 1.0;
            // ROS_WARN("In startup");

            if(!raptor_hb_detected){
                // ROS_WARN("WARN:[AU_1_STARTUP: RaptorHandshake not established");
                state = AU_1_STARTUP;
                break;
            }
            else if(raptor_hb_detected)
            {
                // Raptor heartbeat is not failed
                state = AU_2_IDLE;
                break;
            }
            else{
                //Do nothing

            }

        }

        case AU_2_IDLE:
        {

            mobilityMsg.tqL_cmd = 0.0;
            mobilityMsg.tqR_cmd = 0.0;
            mobilityMsg.brkL_cmd = 1.0;
            mobilityMsg.brkR_cmd = 1.0;

            // ROS_WARN("In Idle");
            if (!raptor_hb_detected)
            {
                state = AU_1_STARTUP;
                ROS_ERROR("ERROR: [AU_2_IDLE]: RaptorHandshake failed ");
                break;

            }

            else if (!dbw_ros_mode)
            {
                state = AU_2_IDLE;
                ROS_ERROR("ERROR: [AU_2_IDLE]: SystemState not 8 or dbw mode not 3 ");
                break;
            }
            else
            {
                state = AU_3_WAIT_EXECUTION;
                break;
            }
        }
        case AU_3_WAIT_EXECUTION:
        {

            mobilityMsg.tqL_cmd = 0.0;
            mobilityMsg.tqR_cmd = 0.0; // Also check from stack if brake_enable command from stack should be true
            mobilityMsg.brkL_cmd = 1.0;
            mobilityMsg.brkR_cmd = 1.0;

            if (raptor_hb_detected && dbw_ros_mode && !stack_fault && cmd_brake_effort && mission_status == "executedNav" && !stop_ros)
            {
                state = AU_4_EXEC_IMINENT;
                mobilityMsg.brkL_cmd = cmd_brake_effort;
                mobilityMsg.brkR_cmd = cmd_brake_effort;
                break;
            }

            else if (!raptor_hb_detected)
            {
                state = AU_1_STARTUP;
                ROS_ERROR("ERROR:[AU_3_WAIT_EXECUTION]: RaptorHandshake failed ");
                break;
            }
            else if (!dbw_ros_mode)
            {
                state = AU_2_IDLE;

                ROS_ERROR("ERROR: [AU_3_WAIT_EXECUTION]: Out of dbwMode ");
                break;
            }
            else if (stack_fault)
            {
                state = AU_2_IDLE;
                ROS_ERROR("ERROR: [AU_3_WAIT_EXECUTION]:Stack Crashed or failed ");
                break;
            }
            else if (stop_ros)
            {
                //  go backuint8 left_brkPressure
                state = AU_2_IDLE;
                ROS_WARN("Warning: [AU_3_WAIT_EXECUTION]:stop button is pressed ");
                break;
            }

            else if (!cmd_brake_effort)
            {
                state = AU_3_WAIT_EXECUTION;
                mobilityMsg.brkL_cmd = cmd_brake_effort;
                mobilityMsg.brkR_cmd = cmd_brake_effort;
                ROS_ERROR("ERROR: [AU_3_WAIT_EXECUTION]:Stack should disable brakes, cmd_brake_efft should be 0.0");
                break;
            }
            else if (mission_status != "executedNav")
            {
                state = AU_3_WAIT_EXECUTION;
                ROS_WARN("Warning: [AU_3_WAIT_EXECUTION]:execute button is not pressed yet or mission status incorrect");
                break;
            }
        }
        case AU_4_EXEC_IMINENT:
        {

            mobilityMsg.tqL_cmd = tqL_cmd_controller;
            mobilityMsg.tqR_cmd = tqR_cmd_controller;
            mobilityMsg.brkL_cmd = 0.0;
            mobilityMsg.brkL_cmd = 0.0;
            // Also check from stack if brake_enable command is false from stack,
            //  because now global plan is ready and brakes should be disengaged
            if (raptor_hb_detected && dbw_ros_mode && !stack_fault && !cmd_brake_effort && mission_status == "globalPlanReady" && !stop_ros)
            {
                state = AU_5_DISENGAGED_BRAKE;
                mobilityMsg.brkL_cmd = cmd_brake_effort;
                mobilityMsg.brkR_cmd = cmd_brake_effort;
                break;
            }

            else if (!raptor_hb_detected)
            {
                state = AU_1_STARTUP;
                ROS_ERROR("ERROR: [AU_4_EXEC_IMINENT]:RaptorHandshake failed ");
                break;
            }
            else if (!dbw_ros_mode)
            {
                state = AU_2_IDLE;
                ROS_ERROR("ERROR:[AU_4_EXEC_IMINENT]: Out of dbwMode ");
                break;
            }
            else if (stack_fault)
            {
                state = AU_2_IDLE;
                ROS_ERROR("ERROR: [AU_4_EXEC_IMINENT]:Stack Crashed or failed ");
                break;
            }
            else if (stop_ros)
            {
                //  go back to idle
                state = AU_2_IDLE;
                ROS_WARN("Warning: [AU_4_EXEC_IMINENT]:stop button is pressed ");
                break;
            }
            else if (cmd_brake_effort)
            {
                state = AU_4_EXEC_IMINENT;
                mobilityMsg.brkL_cmd = cmd_brake_effort;
                mobilityMsg.brkR_cmd = cmd_brake_effort;
                ROS_WARN("Warning: [AU_4_EXEC_IMINENT]:Brakes from stack side are still enabled, they need to be disabled by now");
                break;
            }

            else if (mission_status != "globalPlanReady")
            {
                ROS_INFO("My variable value: %s", mission_status.c_str());
                state = AU_4_EXEC_IMINENT;
                ROS_WARN("Warning: [AU_4_EXEC_IMINENT]:Execute button pressed but global plan not ready yet");
                break;
            }
        }

        case AU_5_DISENGAGED_BRAKE:
        {
            mobilityMsg.tqL_cmd = tqL_cmd_controller;
            mobilityMsg.tqR_cmd = tqR_cmd_controller;
            mobilityMsg.brkL_cmd = 0.0;
            mobilityMsg.brkR_cmd = 0.0;// Also check from stack if brake command is true from stack

            if (raptor_hb_detected && dbw_ros_mode && !stack_fault && !cmd_brake_effort && !raptorbrakeAck && mission_status == "BrakesDisengaging" && !stop_ros)
            {
                state = AU_6_EXEC_MISSION;
                mobilityMsg.brkL_cmd = cmd_brake_effort;
                mobilityMsg.brkR_cmd = cmd_brake_effort;
                break;
            }

            else if (!raptor_hb_detected)
            {
                state = AU_1_STARTUP;
                ROS_ERROR("ERROR: [AU_5_DISENGAGED_BRAKE]:RaptorHandshake failed ");
                break;
            }
            else if (!dbw_ros_mode)
            {
                state = AU_2_IDLE;
                ROS_ERROR("ERROR: [AU_5_DISENGAGED_BRAKE]:Out of dbwMode ");
                break;
            }
            else if (stack_fault)
            {
                state = AU_2_IDLE;
                ROS_ERROR("ERROR: [AU_5_DISENGAGED_BRAKE]:Stack Crashed or failed ");
                break;
            }
            else if (stop_ros)
            {
                //  go back to idle
                state = AU_2_IDLE;
                ROS_WARN("Warning: [AU_5_DISENGAGED_BRAKE]:stop button is pressed ");
                break;
            }
            else if (cmd_brake_effort)
            {
                state = AU_5_DISENGAGED_BRAKE;
                mobilityMsg.brkL_cmd = cmd_brake_effort;
                mobilityMsg.brkR_cmd = cmd_brake_effort;
                ROS_WARN("Warning: [AU_5_DISENGAGED_BRAKE]:Brakes enable command from stack is True, it should be false, they need to be disengaged by now");
                break;
            }
            else if (raptorbrakeAck)
            {
                state = AU_5_DISENGAGED_BRAKE;
                ROS_WARN("Warning: [AU_5_DISENGAGED_BRAKE]:Raptor brakes disengaged acknowledgement not received !");
                break;
            }

            else if (mission_status != "BrakesDisengaging")
            {
                state = AU_5_DISENGAGED_BRAKE;
                ROS_WARN("Warning: [AU_5_DISENGAGED_BRAKE]:Execute button pressed but global plan not ready yet");
                break;
            }
        }

        case AU_6_EXEC_MISSION:
        {

            while (raptor_hb_detected && dbw_ros_mode && !stack_fault && !cmd_brake_effort && mission_status == "CommandingTorques" && !stop_ros)
            {

                state = AU_6_EXEC_MISSION;
                mobilityMsg.tqL_cmd = tqL_cmd_controller;
                mobilityMsg.tqR_cmd = tqR_cmd_controller;
                mobilityMsg.brkL_cmd = cmd_brake_effort;
                mobilityMsg.brkR_cmd = cmd_brake_effort;
                // mobilityMsg.brake_effort = cmd_brake_effort;
                // Call velcityController->commandTorques method with arguments
                ROS_WARN("Warning: [AU_6_EXEC_MISSION]:Commanding torques");
                if (mission_status == "MissionCompleted" or mission_status == "MissionCancelled")
                {
                    state = AU_7_SAFE_STOP;
                    ROS_WARN("Warning: [AU_6_EXEC_MISSION]:Initiating safe stop");
                    break;
                }
            }

            if (!raptor_hb_detected)
            {
                state = AU_1_STARTUP;
                ROS_ERROR("ERROR: [AU_6_EXEC_MISSION]: RaptorHandshake failed ");
                break;
            }
            else if (!dbw_ros_mode)
            {
                state = AU_2_IDLE;
                ROS_ERROR("ERROR: [AU_6_EXEC_MISSION]:Out of dbwMode ");
                break;
            }
            else if (stack_fault)
            {
                state = AU_2_IDLE;
                ROS_ERROR("ERROR: [AU_6_EXEC_MISSION]: Stack Crashed or failed ");
                break;
            }
            else if (stop_ros)
            {
                //  go back to idle
                state = AU_2_IDLE;
                ROS_WARN("Warning: [AU_6_EXEC_MISSION]:stop button is pressed ");
                break;
            }
            else if (cmd_brake_effort)
            {
                state = AU_5_DISENGAGED_BRAKE;
                mobilityMsg.brkL_cmd = cmd_brake_effort;
                mobilityMsg.brkR_cmd = cmd_brake_effort;
                ROS_WARN("Warning: [AU_6_EXEC_MISSION]: Brakes enable command from stack is True, it should be false, they need to be disengaged by now");
                break;
            }

            else if (mission_status != "CommandingTorques")
            {
                state = AU_6_EXEC_MISSION;
                ROS_WARN("Warning: [AU_6_EXEC_MISSION]:Mission status not changed to commanding torques from stack side");
                break;
            }
        }

        case AU_7_SAFE_STOP:
        {

            if (raptor_hb_detected && dbw_ros_mode && !stack_fault && cmd_brake_effort && mission_status == "MissionCompleted" or mission_status == "MissionCancelled" && !stop_ros)
            {
                state = AU_2_IDLE;
                mobilityMsg.brkL_cmd = cmd_brake_effort;
                mobilityMsg.brkR_cmd = cmd_brake_effort;
                ROS_WARN("Warning: [AU_7_SAFE_STOP]:In safe stop");
            }

            else if (!raptor_hb_detected)
            {
                state = AU_1_STARTUP;
                ROS_ERROR("ERROR: [AU_7_SAFE_STOP]:RaptorHandshake failed ");
                break;
            }
            else if (!dbw_ros_mode)
            {
                state = AU_2_IDLE;
                ROS_ERROR("ERROR: [AU_7_SAFE_STOP]: Out of dbwMode ");
                break;
            }
            else if (stack_fault)
            {
                state = AU_2_IDLE;
                ROS_ERROR("ERROR: [AU_7_SAFE_STOP]: Stack Crashed or failed ");
                break;
            }
            else if (stop_ros)
            {
                //  go back to idle
                state = AU_2_IDLE;
                ROS_WARN("Warning: [AU_7_SAFE_STOP]:stop button is pressed ");
                break;
            }
            else if (!cmd_brake_effort)
            {
                state = AU_5_DISENGAGED_BRAKE;
                mobilityMsg.brkL_cmd = cmd_brake_effort;
                mobilityMsg.brkR_cmd = cmd_brake_effort;
                ROS_WARN("Warning: [AU_7_SAFE_STOP]:Brakes enable command from stack is False, it should be true, they need to be disengaged by now");
                break;
            }

            else if (mission_status != "MissionCompleted" or mission_status != "MissionCancelled")
            {
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
