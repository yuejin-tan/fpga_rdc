################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/Retarget.c 

OBJS += \
./drivers/Retarget.o 

C_DEPS += \
./drivers/Retarget.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/Retarget.o: ../drivers/Retarget.c drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -c -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/usr/sys" -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/usr/src" -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/drivers/core" -I"D:/fpga/tang_4k/proj/mcu_project/uart_t1/drivers/peripheral" -Os -ffunction-sections -fdata-sections -mslow-flash-data -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-drivers

clean-drivers:
	-$(RM) ./drivers/Retarget.cyclo ./drivers/Retarget.d ./drivers/Retarget.o ./drivers/Retarget.su

.PHONY: clean-drivers

