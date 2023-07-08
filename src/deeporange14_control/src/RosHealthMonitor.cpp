/*
**** Class to monitor Stack , Raptor handshake state and dbwmode   **** 
stack crash, dbwmode,RaptorHandshake disabled (publish to statemachine) 
health publisher will pack all values as booleans and send StateMachine
*/

#include <deeporange14_control/RosHealthMonitor.h>


namespace deeporange14
{

RosHealthMonitor::RosHealthMonitor(ros::NodeHandle& nh, ros::NodeHandle &priv_nh){

    raptor_hb_timestamp = ros::Time::now().toSec();
    cmdvel_timestamp = ros::Time::now().toSec();

    sub_raptor = nh.subscribe(std::string(topic_ns + "/raptor_state"), 10, &RosHealthMonitor::raptorStateCallback, this, ros::TransportHints().tcpNoDelay(true));
    sub_cmdvel = nh.subscribe(std::string(topic_ns + "/cmd_vel"), 10, &RosHealthMonitor::checkStackFault, this, ros::TransportHints().tcpNoDelay(true));
    // Initialize publishers
    pub_raptorHS = nh.advertise<std_msgs::Bool>(std::string(topic_ns + "/raptor_handshake_fail"),100);
    pub_stackstatus = nh.advertise<std_msgs::Bool>(std::string(topic_ns + "/stack_fault"),100);
    pub_dbwmode = nh.advertise<std_msgs::Bool>(std::string(topic_ns + "/dbw_mode_disabled"),100);
    pub_dbwmode = nh.advertise<std_msgs::Bool>(std::string(topic_ns + "/brake_ack_raptor"),100);

    ros::master::getTopics(master_topics);
    // Add timer object
    timer = nh.createTimer(ros::Duration(1.0 / 20.0), &RosHealthMonitor::UpdateCheck, this);

}

RosHealthMonitor::~RosHealthMonitor(){};

void RosHealthMonitor::UpdateCheck(const ros::TimerEvent& event){

    dbwmodemsg.data = dbw_mode;
    pub_dbwmode.publish(brakeAck);
    if (dbw_mode){
        
        pub_dbwmode.publish(dbwmodemsg);
        ROS_WARN("ERROR : [RosHealthMonitor] DBW mode not equal to  3");

    }else{
       
        pub_dbwmode.publish(dbwmodemsg);
    }

    raptorHsmsg.data = (std::abs(raptor_hb_timestamp - ros::Time::now().toSec()) > 3.0);
    ROS_WARN("raptor hb timestamp : %f",raptor_hb_timestamp);
    ROS_WARN("ros time now : %f", ros::Time::now().toSec());

    if (raptorHsmsg.data){

        pub_raptorHS.publish(raptorHsmsg); 
        ROS_WARN("ERROR : [RosHealthMonitor] Raptor Handshake failed");

    }else{

        pub_raptorHS.publish(raptorHsmsg);
        
    }
    stackmsg.data = (std::abs(cmdvel_timestamp - ros::Time::now().toSec()) > 3.0);
    // ROS_WARN("raptor hb timestamp : %f",cmdvel_timestamp);
    if (stackmsg.data){
        
        pub_stackstatus.publish(stackmsg);        
        ROS_WARN("ERROR : [RosHealthMonitor] Stack Crashed !, ROS cmdvel topic does not exist ");
        
    }else{
        
        pub_stackstatus.publish(stackmsg);
    }
  


}

void RosHealthMonitor::raptorStateCallback(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorStateMsg){

    brakeAck.data = raptorStateMsg->brake_enable_status; 
    raptor_hb_timestamp = raptorStateMsg->header.stamp.sec + raptorStateMsg->header.stamp.nsec*(1e-9);  
    dbw_mode = (raptorStateMsg->dbw_mode != 3);
    
}


void RosHealthMonitor::checkStackFault(const geometry_msgs::Twist::ConstPtr& cmdvelMsg){
    cmdvel_timestamp = ros::Time::now().toSec();  
}
}// namespace deeporange14

