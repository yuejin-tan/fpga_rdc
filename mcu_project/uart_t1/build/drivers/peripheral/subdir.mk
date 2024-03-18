################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/peripheral/gw1ns4c_gpio.c \
../drivers/peripheral/gw1ns4c_i2c.c \
../drivers/peripheral/gw1ns4c_misc.c \
../drivers/peripheral/gw1ns4c_rtc.c \
../drivers/peripheral/gw1ns4c_spi.c \
../drivers/peripheral/gw1ns4c_syscon.c \
../drivers/peripheral/gw1ns4c_timer.c \
../drivers/peripheral/gw1ns4c_uart.c \
../drivers/peripheral/gw1ns4c_wdog.c 

OBJS += \
./drivers/peripheral/gw1ns4c_gpio.o \
./drivers/peripheral/gw1ns4c_i2c.o \
./drivers/peripheral/gw1ns4c_misc.o \
./drivers/peripheral/gw1ns4c_rtc.o \
./drivers/peripheral/gw1ns4c_spi.o \
./drivers/peripheral/gw1ns4c_syscon.o \
./drivers/peripheral/gw1ns4c_timer.o \
./drivers/peripheral/gw1ns4c_uart.o \
./drivers/peripheral/gw1ns4c_wdog.o 

C_DEPS += \
./drivers/peripheral/gw1ns4c_gpio.d \
./drivers/peripheral/gw1ns4c_i2c.d \
./drivers/peripheral/gw1ns4c_misc.d \
./drivers/peripheral/gw1ns4c_rtc.d \
./drivers/peripheral/gw1ns4c_spi.d \
./drivers/peripheral/gw1ns4c_syscon.d \
./drivers/peripheral/gw1ns4c_timer.d \
./drivers/peripheral/gw1ns4c_uart.d \
./drivers/peripheral/gw1ns4c_wdog.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/peripheral/%.o drivers/peripheral/%.su drivers/peripheral/%.cyclo: ../drivers/peripheral/%.c drivers/peripheral/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -c -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/usr/sys" -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/usr/src" -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/drivers/core" -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/drivers/peripheral" -Os -ffunction-sections -fdata-sections -mslow-flash-data -Wall -Wextra -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-drivers-2f-peripheral

clean-drivers-2f-peripheral:
	-$(RM) ./drivers/peripheral/gw1ns4c_gpio.cyclo ./drivers/peripheral/gw1ns4c_gpio.d ./drivers/peripheral/gw1ns4c_gpio.o ./drivers/peripheral/gw1ns4c_gpio.su ./drivers/peripheral/gw1ns4c_i2c.cyclo ./drivers/peripheral/gw1ns4c_i2c.d ./drivers/peripheral/gw1ns4c_i2c.o ./drivers/peripheral/gw1ns4c_i2c.su ./drivers/peripheral/gw1ns4c_misc.cyclo ./drivers/peripheral/gw1ns4c_misc.d ./drivers/peripheral/gw1ns4c_misc.o ./drivers/peripheral/gw1ns4c_misc.su ./drivers/peripheral/gw1ns4c_rtc.cyclo ./drivers/peripheral/gw1ns4c_rtc.d ./drivers/peripheral/gw1ns4c_rtc.o ./drivers/peripheral/gw1ns4c_rtc.su ./drivers/peripheral/gw1ns4c_spi.cyclo ./drivers/peripheral/gw1ns4c_spi.d ./drivers/peripheral/gw1ns4c_spi.o ./drivers/peripheral/gw1ns4c_spi.su ./drivers/peripheral/gw1ns4c_syscon.cyclo ./drivers/peripheral/gw1ns4c_syscon.d ./drivers/peripheral/gw1ns4c_syscon.o ./drivers/peripheral/gw1ns4c_syscon.su ./drivers/peripheral/gw1ns4c_timer.cyclo ./drivers/peripheral/gw1ns4c_timer.d ./drivers/peripheral/gw1ns4c_timer.o ./drivers/peripheral/gw1ns4c_timer.su ./drivers/peripheral/gw1ns4c_uart.cyclo ./drivers/peripheral/gw1ns4c_uart.d ./drivers/peripheral/gw1ns4c_uart.o ./drivers/peripheral/gw1ns4c_uart.su ./drivers/peripheral/gw1ns4c_wdog.cyclo ./drivers/peripheral/gw1ns4c_wdog.d ./drivers/peripheral/gw1ns4c_wdog.o ./drivers/peripheral/gw1ns4c_wdog.su

.PHONY: clean-drivers-2f-peripheral

