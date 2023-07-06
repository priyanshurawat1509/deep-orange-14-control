/*
**** Class to monitor Stack , Raptor handshake state and dbwmode   **** 
stack crash, dbwmode,RaptorHandshake disabled (publish to statemachine) 
health publisher will pack all values as booleans and send StateMachine
*/

#include <deeporange14_control/RosHealthMonitor.h>


namespace deeporange14
{

RosHealthMonitor::RosHealthMonitor(ros::NodeHandle& nh, ros::NodeHandle &priv_nh){

    sub_raptor = nh.subscribe(std::string(topic_ns + "/raptor_state"), 10, &RosHealthMonitor::raptorStateCallback, this, ros::TransportHints().tcpNoDelay(true));
    
    // Initialize publishers
    pub_raptorHS = nh.advertise<std_msgs::Bool>(std::string(topic_ns + "/raptor_handshake_fail"),100);
    pub_stackstatus = nh.advertise<std_msgs::Bool>(std::string(topic_ns + "/stack_fault"),100);
    pub_dbwmode = nh.advertise<std_msgs::Bool>(std::string(topic_ns + "/dbw_mode_disabled"),100);
    pub_dbwmode = nh.advertise<std_msgs::Bool>(std::string(topic_ns + "/brake_ack_raptor"),100);
}

RosHealthMonitor::~RosHealthMonitor(){};

void RosHealthMonitor::raptorStateCallback(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorStateMsg){
    checkdbwModeDisabled(raptorStateMsg);
    checkRaptorHandshakeFail(raptorStateMsg);
    checkBrakeEnableAck(raptorStateMsg);

}
void RosHealthMonitor::checkBrakeEnableAck(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorStateMsg)
{

    brakeAck.data = raptorMsg.brake_enable_status;   
    pub_dbwmode.publish(brakeAck);

}
void RosHealthMonitor::checkdbwModeDisabled(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorStateMsg)
{

    dbwmodemsg.data = (raptorMsg.dbw_mode != 3.0 );

    if (dbwmodemsg.data){
        
        pub_dbwmode.publish(dbwmodemsg);
        ROS_WARN("ERROR : DBW mode not equal to 3 ");

    }else{
       
        pub_dbwmode.publish(dbwmodemsg);
    }
}


void RosHealthMonitor::checkRaptorHandshakeFail(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorStateMsg)
{

  
    raptorHsmsg.data = (std::abs(raptorStateMsg->header.stamp.toSec() - ros::Time::now().toSec()) <= 3.0);

    if (raptorHsmsg.data){

        pub_raptorHS.publish(raptorHsmsg); 
        ROS_WARN("ERROR : Raptor Heartbeat fail");

    }else{

        pub_raptorHS.publish(raptorHsmsg);
        
    }
}

void RosHealthMonitor::checkStackFault(){
    ros::master::V_TopicInfo master_topics;
    ros::master::getTopics(master_topics);
    for (ros::master::V_TopicInfo::iterator it = master_topics.begin() ; it != master_topics.end(); it++) {
                const ros::master::TopicInfo& info = *it;
                std::cout << "topic_" << it - master_topics.begin() << ": " << info.name << std::endl;
    }
    // std::string topicName = topic_ns + "/cmd_vel";
    // bool topicpresent = ros::master::topicExists(topicName);
    
    // stackmsg.data = !topicpresent;

    // if (stackmsg.data){
        
    //     pub_stackstatus.publish(stackmsg);        
    //     ROS_WARN("ERROR : Stack Crashed !, ROS topic '%s' does not exist ",topicName.c_str());
        
    // }else{
        
    //     pub_stackstatus.publish(stackmsg);
    // }
    
    // }
 }
} // namespace deeporange14

