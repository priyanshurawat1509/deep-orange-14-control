/*********************************************************************
Refer to DO13 Raptor DBW state machine for info on states
 *********************************************************************/

#ifndef _DEEPORANGE_STATE_ENUMS_H
#define _DEEPORANGE_STATE_ENUMS_H
#include <stdint.h>

namespace deeporange14
{

#undef BUILD_ASSERT

enum allStates{
    // ROS States
    AU_0_DEFAULT                   = 0,
    AU_1_STARTUP                   = 1,
    AU_2_IDLE                      = 2,
    AU_3_WAIT_EXECUTION            = 3,
    AU_4_EXEC_IMINENT              = 4,
    AU_5_DISENGAGED_BRAKE          = 5,
    AU_6_EXEC_MISSION              = 6,
    AU_7_SAFE_STOP                 = 7,
    AU_200_FAULT                   = 200, 
    // Raptor States
    DBW_3_ROS_EN                   = 3

  };
} //deeporange14

#endif


