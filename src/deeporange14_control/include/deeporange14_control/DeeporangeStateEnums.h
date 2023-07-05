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
    AU0_DEFAULT                   = 0,
    AU1_STARTUP                   = 1,
    AU2_IDLE                      = 2,
    AU3_WAIT_EXECUTION            = 3,
    AU4_EXEC_IMINENT              = 4,
    AU5_DISENGAGED_BRAKE          = 5,
    AU6_COMMAND_TORQUES           = 6,
    AU7_SAFE_STOP                 = 7,
    AU98_FAULT                    = 98, 


  };
} //deeporange14

#endif


