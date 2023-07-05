/* A high level state machine to interact with Raptor to control brakes torque command */

#ifndef _STATE_MACHINE_H_
#define _STATE_MACHINE_H_

#include <string.h>
#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <can_msgs/Frame.h>
#include <geometry_msgs/TwistStamped.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>

#include <deeporange14_msgs/MobilityMsg.h>
#include <deeporange14_msgs/MissionStatus.h>
#include <deeporange14_msgs/RaptorStateMsg.h>
#include <deeporange14_msgs/TorqueValuesMsg.h>
#include <deeporange14_control/DeeporangeStateEnums.h>

namespace deeporange14
{
    class StateMachine{
        public:
        StateMachine(ros::NodeHandle &node, ros::NodeHandle &priv_nh);
        ~StateMachine();

        private:
        void getHanshakeFailed(const std_msgs::Bool::ConstPtr& raptorhsfail);

        void getStackFault(const std_msgs::Bool::ConstPtr& stackfault);

        void getDbwModedisabled(const std_msgs::Bool::ConstPtr& dbwmode);

        void getRaptorBrakeStatus(const std_msgs::Bool::ConstPtr& raptorhsfail);

        void getMissionStatus(const deeporange14_msgs::MissionStatus::ConstPtr& missionStatus);
    
        void getBrakeEnable(const std_msgs::Bool::ConstPtr& brakeEnable);
        
        void getTorqueValues(const deeporange14_msgs::TorqueValuesMsg::ConstPtr& trqvalues);

        void getStopRos(const std_msgs::Bool::ConstPtr& StopRos);

        void getRaptorMsg(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorMsg);

        void publishROSState(const ros::TimerEvent& event);

        void updateROSStateMsg();

        //member variables 
        bool raptorhs_fail;
        bool stack_fault;
        bool dbwmode_disable;
        std::string mission_status;
        bool brake_enable_stack;
        float l_torque;
        float r_torque;
        bool stop_ros;
        bool raptorbrakeAck;
        uint system_state;
        uint dbw_mode;
        allStates state;
        
        ros::Timer timer;
        // Publishers


        // Subscribers
        ros::Subscriber sub_raptorhsfail;
        ros::Subscriber sub_stackfault;
        ros::Subscriber sub_dbwmode;
        ros::Subscriber sub_brkAck;
        ros::Subscriber sub_missionStatus;
        ros::Subscriber sub_brakeStatus;
        ros::Subscriber sub_rosController;
        ros::Subscriber sub_rosStop;
        ros::Subscriber sub_raptorState;
      
        std::string topic_ns = "/deeporange14";
        ros::Publisher pub_mobility;

        // Init the msg variables
        
        deeporange14_msgs::MobilityMsg mobilityMsg;
        deeporange14_msgs::TorqueValuesMsg trqvalues;
        deeporange14_msgs::RaptorStateMsg raptorMsg;

    };

}

#endif