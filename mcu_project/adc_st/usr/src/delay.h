#pragma once

#include "stdint.h"
#include "system_gw1ns4c.h"

void initRamfuncs();

void DELAY_TICK(uint32_t ticks);

void delay_ms(uint32_t delay_ms);
