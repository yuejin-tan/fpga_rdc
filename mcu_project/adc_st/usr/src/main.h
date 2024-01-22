
#ifndef _INC_MAIN_H_
#define _INC_MAIN_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "stdint.h"

    extern float voltAns;
    extern uint16_t adcRawData;
    extern uint32_t ms_cnt;

    extern float voltTar;
    extern uint16_t dacRawData;

    extern uint16_t initOk;

#ifdef __cplusplus
}
#endif

#endif 
