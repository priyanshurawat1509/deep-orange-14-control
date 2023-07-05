/*********************************************************************
Written for use in Deep Orange 14 Drive-by-wire package
Makes use of New Eagle package: can_dbc_parser (https://github.com/NewEagleRaptor/raptor-dbw-ros/tree/master/can_dbc_parser)
#include <deeporange14_control/DeepOrangeDbwCan.h>
#include <deeporange14_control/DataLogger.h>
 *********************************************************************/

#include <ros/ros.h>



#include <deeporange14_control/RosHealthMonitor.h>
#include<deeporange14_control/StateMachine.h>



int main(int argc, char **argv)
{
  ros::init(argc, argv, "deeporange14");
  ros::NodeHandle nh;
  ros::NodeHandle priv_nh("~");

  // create StateMachine object
  deeporange14::StateMachine n_statemachine(nh, priv_nh);
  deeporange14::RosHealthMonitor n_rosHealthmonitor(nh,priv_nh);

  // create Data Logger object
  // deeporange14::DataLogger n_datalogger(nh, priv_nh);

  // deeporange14::DeepOrangeDbwCan can_node(nh, priv_nh);
  
  // deeporange14::DeepOrangeVelcityController controller_node (nh, priv_nh);

  ros::spin();

  return 0;
}
