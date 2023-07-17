/* A high level state machine to interact with Raptor to control brakes torque command */

#ifndef _DEEPORANGE_STATE_SUPERVISOR_H_
#define _DEEPORANGE_STATE_SUPERVISOR_H_

#include <string.h>
#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Float32.h>
#include <can_msgs/Frame.h>
#include <geometry_msgs/TwistStamped.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <tf2_msgs/TFMessage.h>

#include <string>
#include <ros/console.h>
#include <geometry_msgs/Twist.h>
#include <deeporange14_control/DeeporangeStateEnums.h>
#include <deeporange14_msgs/MobilityMsg.h>
#include <deeporange14_msgs/MissionStatus.h>
#include <deeporange14_msgs/RaptorStateMsg.h>
#include <deeporange14_msgs/TorqueCmdStamped.h>

namespace deeporange14
{
    class DeepOrangeStateSupervisor{
        public:
        DeepOrangeStateSupervisor(ros::NodeHandle &node, ros::NodeHandle &priv_nh);
        ~DeepOrangeStateSupervisor();

        private:
        void checkStackStatus(const geometry_msgs::Twist::ConstPtr& cmdVelMsg);
        
        void getMissionStatus(const deeporange14_msgs::MissionStatus::ConstPtr& missionStatus);
    
        void getStackBrakeCmd(const std_msgs::Float32::ConstPtr& brakeEffort);
        
        void getTorqueValues(const deeporange14_msgs::TorqueCmdStamped::ConstPtr& trqValues);

        void getStopRos(const std_msgs::Bool::ConstPtr& stopRosMsg);

        void getRaptorMsg(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorMsg);

        void publishROSState(const ros::TimerEvent& event);

        void updateROSStateMsg();

        //member variables 
        bool raptor_hb_fail;
        bool stack_fault;
        std::string mission_status;
        float cmd_brake_effort;
        float cmd_trq_left;
        float cmd_trq_right;
        bool stop_ros;
        bool raptorbrakeAck;
        uint system_state;
        bool dbw_ros_mode;
        allStates state;
        double raptor_hb_timestamp;
        double cmdvel_timestamp;
        
        ros::Timer timer;
        double start_timer;

        float cmdvel_cutoff;
        float raptorhb_cutoff;
        int update_freq;
        // Publishers


        // Subscribers
        ros::Subscriber sub_cmdvel;
        ros::Subscriber sub_missionStatus;
        ros::Subscriber sub_brakeStatus;
        ros::Subscriber sub_rosController;
        ros::Subscriber sub_rosStop;
        ros::Subscriber sub_raptorState;
        ros::Subscriber sub_stopros;
        std::string topic_ns = "/deeporange14";
        ros::Publisher pub_mobility;

        // Init the msg variables
        
        deeporange14_msgs::MobilityMsg mobilityMsg;
        deeporange14_msgs::TorqueCmdStamped trqvalues;
        deeporange14_msgs::RaptorStateMsg raptorMsg;

    };

}

#endif