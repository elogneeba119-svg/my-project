# Target firmware output names
TARGET = build/stm32_firmware

# Simple source file compilation setup
CC = arm-none-eabi-gcc
OBJCOPY = arm-none-eabi-objcopy

CFLAGS = -mcpu=cortex-m4 -mthumb -Wall -g -O0

all:
	@mkdir -p build
	$(CC) $(CFLAGS) src/main.c -o $(TARGET).elf
	$(OBJCOPY) -O ihex $(TARGET).elf $(TARGET).hex
	$(OBJCOPY) -O binary $(TARGET).elf $(TARGET).bin
	@echo "STM32 Binary and Hex files generated successfully!"

