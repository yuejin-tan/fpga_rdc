################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/core/core_cm3.c 

OBJS += \
./drivers/core/core_cm3.o 

C_DEPS += \
./drivers/core/core_cm3.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/core/%.o drivers/core/%.su drivers/core/%.cyclo: ../drivers/core/%.c drivers/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -c -I"D:/fpga/proj/mcu_project/adc_st/usr/sys" -I"D:/fpga/proj/mcu_project/adc_st/usr/src" -I"D:/fpga/proj/mcu_project/adc_st/drivers/core" -I"D:/fpga/proj/mcu_project/adc_st/drivers/peripheral" -Os -ffunction-sections -fdata-sections -Wall -Wextra -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-drivers-2f-core

clean-drivers-2f-core:
	-$(RM) ./drivers/core/core_cm3.cyclo ./drivers/core/core_cm3.d ./drivers/core/core_cm3.o ./drivers/core/core_cm3.su

.PHONY: clean-drivers-2f-core

