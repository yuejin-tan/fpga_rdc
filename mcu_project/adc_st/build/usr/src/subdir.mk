################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usr/src/gw1ns4c_it.c \
../usr/src/main.c \
../usr/src/scd.c \
../usr/src/scd_reg.c 

OBJS += \
./usr/src/gw1ns4c_it.o \
./usr/src/main.o \
./usr/src/scd.o \
./usr/src/scd_reg.o 

C_DEPS += \
./usr/src/gw1ns4c_it.d \
./usr/src/main.d \
./usr/src/scd.d \
./usr/src/scd_reg.d 


# Each subdirectory must supply rules for building sources it contributes
usr/src/%.o usr/src/%.su usr/src/%.cyclo: ../usr/src/%.c usr/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -c -I"D:/fpga/proj/mcu_project/adc_st/usr/sys" -I"D:/fpga/proj/mcu_project/adc_st/usr/src" -I"D:/fpga/proj/mcu_project/adc_st/drivers/core" -I"D:/fpga/proj/mcu_project/adc_st/drivers/peripheral" -Os -ffunction-sections -fdata-sections -Wall -Wextra -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-usr-2f-src

clean-usr-2f-src:
	-$(RM) ./usr/src/gw1ns4c_it.cyclo ./usr/src/gw1ns4c_it.d ./usr/src/gw1ns4c_it.o ./usr/src/gw1ns4c_it.su ./usr/src/main.cyclo ./usr/src/main.d ./usr/src/main.o ./usr/src/main.su ./usr/src/scd.cyclo ./usr/src/scd.d ./usr/src/scd.o ./usr/src/scd.su ./usr/src/scd_reg.cyclo ./usr/src/scd_reg.d ./usr/src/scd_reg.o ./usr/src/scd_reg.su

.PHONY: clean-usr-2f-src

