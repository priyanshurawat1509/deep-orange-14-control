#include <ros/ros.h>
#include <std_msgs/Bool.h>

#include <sensor_msgs/PointCloud2.h>
#include <tf2_msgs/TFMessage.h>

#include <string>
#include <ros/console.h>
#include "geometry_msgs/Twist.h"
#include <deeporange14_control/DeeporangeStateEnums.h>
#include <deeporange14_msgs/RaptorStateMsg.h>


namespace deeporange14
{

class RosHealthMonitor
{
    public:
    //constructor
    RosHealthMonitor(ros::NodeHandle& nh, ros::NodeHandle &priv_nh);

    //destructor
    ~RosHealthMonitor();

    private:
    //member-variables
    std::string topic_ns = "/warty" ; 
    std_msgs::Bool raptorHsmsg;
    std_msgs::Bool stackmsg;
    std_msgs::Bool dbwmodemsg;
    std_msgs::Bool brakeAck;
    geometry_msgs::Twist cmdvelMsg;
    deeporange14_msgs::RaptorStateMsg raptorStateMsg;
    //member functions

    void raptorStateCallback(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorStateMsg);
    void checkdbwModeDisabled(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorStateMsg);
    void checkRaptorHandshakeFail(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorStateMsg);
    void checkBrakeEnableAck(const deeporange14_msgs::RaptorStateMsg::ConstPtr& raptorStateMsg);
    void checkStackFault(const geometry_msgs::Twist::ConstPtr& cmdvelMsg);
    void UpdateCheck(const ros::TimerEvent& event);


    //publishers and subscribers
    ros::Subscriber sub_raptor;
    ros::Subscriber sub_cmdvel;
    ros::Publisher pub_raptorHS;
    ros::Publisher pub_stackstatus;
    ros::Publisher pub_dbwmode;
    ros::master::V_TopicInfo master_topics;
    ros::Timer timer;
    double raptor_hb_timestamp;
    double cmdvel_timestamp;
    bool dbw_mode;

   


    };

}

    // checkdbwModeDisabled(raptorStateMsg);
    // checkRaptorHandshakeFail(raptorStateMsg);
    // checkBrakeEnableAck(raptorStateMsg);