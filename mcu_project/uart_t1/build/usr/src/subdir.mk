################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usr/src/delay.c \
../usr/src/gw1ns4c_it.c \
../usr/src/main.c \
../usr/src/scd.c \
../usr/src/scd_reg.c 

OBJS += \
./usr/src/delay.o \
./usr/src/gw1ns4c_it.o \
./usr/src/main.o \
./usr/src/scd.o \
./usr/src/scd_reg.o 

C_DEPS += \
./usr/src/delay.d \
./usr/src/gw1ns4c_it.d \
./usr/src/main.d \
./usr/src/scd.d \
./usr/src/scd_reg.d 


# Each subdirectory must supply rules for building sources it contributes
usr/src/%.o usr/src/%.su usr/src/%.cyclo: ../usr/src/%.c usr/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -c -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/usr/sys" -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/usr/src" -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/drivers/core" -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/drivers/peripheral" -Os -ffunction-sections -fdata-sections -mslow-flash-data -Wall -Wextra -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-usr-2f-src

clean-usr-2f-src:
	-$(RM) ./usr/src/delay.cyclo ./usr/src/delay.d ./usr/src/delay.o ./usr/src/delay.su ./usr/src/gw1ns4c_it.cyclo ./usr/src/gw1ns4c_it.d ./usr/src/gw1ns4c_it.o ./usr/src/gw1ns4c_it.su ./usr/src/main.cyclo ./usr/src/main.d ./usr/src/main.o ./usr/src/main.su ./usr/src/scd.cyclo ./usr/src/scd.d ./usr/src/scd.o ./usr/src/scd.su ./usr/src/scd_reg.cyclo ./usr/src/scd_reg.d ./usr/src/scd_reg.o ./usr/src/scd_reg.su

.PHONY: clean-usr-2f-src

