################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usr/sys/system_gw1ns4c.c 

OBJS += \
./usr/sys/system_gw1ns4c.o 

C_DEPS += \
./usr/sys/system_gw1ns4c.d 


# Each subdirectory must supply rules for building sources it contributes
usr/sys/%.o usr/sys/%.su usr/sys/%.cyclo: ../usr/sys/%.c usr/sys/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -c -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/usr/sys" -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/usr/src" -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/drivers/core" -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/drivers/peripheral" -Os -ffunction-sections -fdata-sections -mslow-flash-data -Wall -Wextra -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-usr-2f-sys

clean-usr-2f-sys:
	-$(RM) ./usr/sys/system_gw1ns4c.cyclo ./usr/sys/system_gw1ns4c.d ./usr/sys/system_gw1ns4c.o ./usr/sys/system_gw1ns4c.su

.PHONY: clean-usr-2f-sys

