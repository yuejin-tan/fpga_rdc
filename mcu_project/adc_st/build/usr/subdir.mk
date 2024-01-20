################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../usr/startup_gw1ns4c.S 

OBJS += \
./usr/startup_gw1ns4c.o 

S_UPPER_DEPS += \
./usr/startup_gw1ns4c.d 


# Each subdirectory must supply rules for building sources it contributes
usr/%.o: ../usr/%.S usr/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m3 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-usr

clean-usr:
	-$(RM) ./usr/startup_gw1ns4c.d ./usr/startup_gw1ns4c.o

.PHONY: clean-usr

