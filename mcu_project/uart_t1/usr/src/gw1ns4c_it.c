/*
 ******************************************************************************************
 * @file      gw1ns4c_it.c
 * @author    GowinSemiconductor
 * @device    Gowin_EMPU(GW1NS-4C)
 * @brief     Main Interrupt Service Routines.
 *            This file provides template for all exceptions handler and
 *            peripherals interrupt service routine.
 ******************************************************************************************
 */

#include "gw1ns4c_it.h"
#include "main.h"
#include "scd_inc.h"
#include "delay.h"

void NMI_Handler(void)
{
    while (1)
    {
    }
}

void HardFault_Handler(void)
{
    while (1)
    {
    }
}

void MemManage_Handler(void)
{
    while (1)
    {
    }
}

void BusFault_Handler(void)
{
    while (1)
    {
    }
}

void UsageFault_Handler(void)
{
    while (1)
    {
    }
}

void SVC_Handler(void)
{
    while (1)
    {
    }
}

void DebugMon_Handler(void)
{
    while (1)
    {
    }
}

void PendSV_Handler(void)
{
    while (1)
    {
    }
}

void SysTick_Handler(void)
{
    ms_cnt++;
    if (initOk)
    {
        SPI_Select_Slave(1);
        adcRawData = SPI_ReadWriteByte(0) << 8;
        adcRawData |= SPI_ReadWriteByte(0);
        SPI_Select_Slave(0);
        voltAns = ((int32_t)adcRawData - (int32_t)0x8000) * 375e-6f;

        GPIO_ResetBit(GPIO0, GPIO_Pin_1);
        dacRawData = voltTar * (1023.0f / 5.0f);
        dacRawData <<= 2;
        SPI_ReadWriteByte((dacRawData & 0xff00u) >> 8);
        SPI_ReadWriteByte((dacRawData & 0xffu));
        GPIO_SetBit(GPIO0, GPIO_Pin_1);
    }
}

/******************************************************************************/
/*                 GW1NS4C Peripherals Interrupt Handlers                     */
/*  Add here the Interrupt Handler for the used peripheral(s) (XXX), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_gw1ns4c.s).                                                 */
/******************************************************************************/

void USER_INT0_Handler(void)
{
    while (1)
    {
    }
}

void USER_INT1_Handler(void)
{
    while (1)
    {
    }
}

void USER_INT2_Handler(void)
{
    while (1)
    {
    }
}

void USER_INT3_Handler(void)
{
    while (1)
    {
    }
}

void USER_INT4_Handler(void)
{
    while (1)
    {
    }
}

void USER_INT5_Handler(void)
{
    while (1)
    {
    }
}

void UART0_Handler(void)
{
    if (UART0->STATE & UART_STATE_RXBF)
    {
        SCD_Rev1Byte(&scd_1, (UART0->DATA));
    }
    UART_ClearRxIRQ(UART0);
}

void UART1_Handler(void)
{
    while (1)
    {
    }
}

void TIMER0_Handler(void)
{
    while (1)
    {
    }
}

void TIMER1_Handler(void)
{
    while (1)
    {
    }
}

void I2C_Handler(void)
{
    while (1)
    {
    }
}

void RTC_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_0_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_1_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_2_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_3_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_4_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_5_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_6_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_7_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_8_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_9_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_10_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_11_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_12_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_13_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_14_Handler(void)
{
    while (1)
    {
    }
}

void PORT0_15_Handler(void)
{
    while (1)
    {
    }
}

/*************************GowinSemiconductor*****END OF FILE*********************/
