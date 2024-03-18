#include "delay.h"
#include "string.h"
#include "gw1ns4c.h"

void initRamfuncs()
{
    extern uint8_t __ramfuncsFlashStart;
    extern uint8_t __ramfuncs_start__;
    extern uint8_t __ramfuncs_end__;

    memcpy(&__ramfuncs_start__, &__ramfuncsFlashStart, (&__ramfuncs_end__) - (&__ramfuncs_start__));
}

__attribute__((section(".ramfuncs")))
void DELAY_TICK(uint32_t ticks)
{
    const uint32_t diff = 8;

    ticks /= 6;
    if (ticks > diff)
    {
        ticks -= diff;
    }
    else
    {
        return;
    }

    __asm(
    ".syntax unified\n"
        "delay_loop_start:\n"
        "subs    %[cntx], #1\n"
        "bne     delay_loop_start\n"
        :
    : [cntx] "l"(ticks)
        : "cc"
        );

    return;
}

void delay_ms(uint32_t delay_ms)
{
    for (uint32_t i = 0;i < delay_ms;i++)
    {
        while ((SysTick->CTRL & SysTick_CTRL_COUNTFLAG_Msk) == 0)
        {
            // wait
        }
    }
}
