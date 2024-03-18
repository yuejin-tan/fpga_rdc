#include "gw1ns4c.h"
#include "main.h"
#include "scd_inc.h"
#include "delay.h"
#include "ahb_uart.h"

//Initializes GPIO
void GPIOInit(void)
{
    GPIO_InitTypeDef GPIO_InitType;

    GPIO_InitType.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1 | GPIO_Pin_2;
    GPIO_InitType.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitType.GPIO_Int = GPIO_Int_Disable;

    GPIO_Init(GPIO0, &GPIO_InitType);

    // pin0 adcReset
    GPIO_ResetBit(GPIO0, GPIO_Pin_0);
    // pin1 dacCs
    GPIO_SetBit(GPIO0, GPIO_Pin_1);
    // pin2 uartsel
    GPIO_ResetBit(GPIO0, GPIO_Pin_2);

}

//Initializes UART0
void UartInit(void)
{
    UART_InitTypeDef UART_InitStruct;

    UART_InitStruct.UART_Mode.UARTMode_Tx = ENABLE;
    UART_InitStruct.UART_Mode.UARTMode_Rx = ENABLE;
    UART_InitStruct.UART_Int.UARTInt_Tx = DISABLE;
    UART_InitStruct.UART_Int.UARTInt_Rx = ENABLE;
    UART_InitStruct.UART_Ovr.UARTOvr_Tx = DISABLE;
    UART_InitStruct.UART_Ovr.UARTOvr_Rx = DISABLE;
    UART_InitStruct.UART_Hstm = DISABLE;
    //    UART_InitStruct.UART_BaudRate = 460800;
    UART_InitStruct.UART_BaudRate = 115200;

    UART_Init(UART0, &UART_InitStruct);
}

void nvicInit(void)
{
    NVIC_InitTypeDef InitTypeDef_NVIC;

    NVIC_SetPriorityGrouping(NVIC_PriorityGroup_2);

    // uart Rx
    InitTypeDef_NVIC.NVIC_IRQChannel = UART0_IRQn;
    InitTypeDef_NVIC.NVIC_IRQChannelPreemptionPriority = 1;
    InitTypeDef_NVIC.NVIC_IRQChannelSubPriority = 1;
    InitTypeDef_NVIC.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&InitTypeDef_NVIC);

    // systick
    InitTypeDef_NVIC.NVIC_IRQChannel = SysTick_IRQn;
    InitTypeDef_NVIC.NVIC_IRQChannelPreemptionPriority = 2;
    InitTypeDef_NVIC.NVIC_IRQChannelSubPriority = 1;
    InitTypeDef_NVIC.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&InitTypeDef_NVIC);
}

//Initializes SPI
void SPIInit(void)
{
    SPI_InitTypeDef init_spi;
    // 9MHz
    init_spi.CLKSEL = CLKSEL_CLK_DIV_8;
    init_spi.DIRECTION = SHIFT_DIR_MSB_FIRST;
    init_spi.PHASE = SPI_CPOL_LO;
    init_spi.POLARITY = SPI_CPHA_POSEDGE;

    SPI_Init(&init_spi);
}

void uart_ahb_init()
{
    AHB_UART->cmd.all = 0;
    AHB_UART->buad_div_2 = (SystemCoreClock / (115200ul * 2ul)) - 1;
    // AHB_UART->buad_div_2 = (SystemCoreClock / (460800ul * 2ul)) - 1;
    AHB_UART->cmd.all = 1;
}

float voltAns;
uint16_t adcRawData;
uint32_t ms_cnt;
uint16_t initOk = 0;

float voltTar = 2.5f;
uint16_t dacRawData;

//delay ms

int main(void)
{
    GPIOInit();
    initRamfuncs();

    nvicInit();
    UartInit();
    SPIInit();
    uart_ahb_init();

    SysTick_Config(SystemCoreClock / 1000ul - 1ul);

    // adcInit
    delay_ms(2);
    // 退出复位
    GPIO_SetBit(GPIO0, GPIO_Pin_0);
    delay_ms(10);
    SPI_Select_Slave(0);
    delay_ms(1);
    SPI_Select_Slave(1);
    delay_ms(1);
    initOk = 1;

    scd_init_1();


     GPIO_SetBit(GPIO0, GPIO_Pin_2);
     while (1)
     {
         while (AHB_UART->cmd.bit.TX_FIFO_FULL == 0)
         {
             AHB_UART->data = scd_send1Byte(&scd_1);
         }
         while (AHB_UART->cmd.bit.RX_FIFO_EMPTY == 0)
         {
             SCD_Rev1Byte(&scd_1, AHB_UART->data);
         }
     }

    while (1)
    {
        if ((UART0->STATE & UART_STATE_TXBF) == 0)
        {
            UART0->DATA = scd_send1Byte(&scd_1);
        }

    }

    return 0;
}

