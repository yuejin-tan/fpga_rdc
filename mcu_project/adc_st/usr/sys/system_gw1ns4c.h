/*
 *********************************************************************************************
 * @file      system_gw1ns4c.h
 * @author    GowinSemiconductor
 * @device    Gowin_EMPU(GW1NS-4C)
 * @brief     CMSIS Cortex-M3 Device Peripheral Access Layer Header File for Device GW1NS-4C.
 *********************************************************************************************
 */

/**
  * @brief Define to prevent recursive inclusion
  */
#ifndef __SYSTEM_GW1NS4C_H
#define __SYSTEM_GW1NS4C_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

extern uint32_t SystemCoreClock;    /*!< Processor Clock Frequency */
extern uint32_t PCLK1;              /*!< APB1 Clock Frequency */
extern uint32_t PCLK2;              /*!< APB2 Clock Frequency */
extern uint32_t HCLK;               /*!< AHB Clock Frequency */

/**
 * Initialize the system
 *
 * @param  none
 * @return none
 *
 * @brief  Setup the mcu system.
 *         Initialize the System and update the SystemCoreClock variable.
 */
extern void SystemInit (void);

/**
 * Update SystemCoreClock variable
 *
 * @param  none
 * @return none
 *
 * @brief  Updates the SystemCoreClock with current core Clock
 *         retrieved from mcu registers.
 */
extern void SystemCoreClockUpdate (void);

#ifdef __cplusplus
}
#endif

#endif /* SYSTEM_GW1NS4C_H */

/**********************GowinSemiconductor**********END OF FILE*****************/
