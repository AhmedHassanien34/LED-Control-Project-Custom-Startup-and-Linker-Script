CC = arm-none-eabi-gcc

MACH = cortex-m4

CFLAGS = -c -mcpu=$(MACH) -std=gnu11 -mthumb -Wall

LDFLAGS = -T Stm32F446_LS.ld -nostdlib -Wl,-Map=final.map

main.o : main.c
	$(CC) $(CFLAGS) $^ -o $@

RCC_program.o : RCC_program.c
	$(CC) $(CFLAGS) $^ -o $@
	
GPIO_program.o : GPIO_program.c
	$(CC) $(CFLAGS) $^ -o $@		
	
STM32_F446reStartup.o : STM32_F446reStartup.c
	$(CC) $(CFLAGS) $^ -o $@

final.elf : main.o GPIO_program.o RCC_program.o STM32_F446reStartup.o
	$(CC) $(LDFLAGS) $^ -o $@
	
All : main.o GPIO_program.o RCC_program.o STM32_F446reStartup.o Final.elf
	
Clean :
	rm -rf *.o *.elf
	
Load3 :
	openocd -f board/stm32f103c8_blue_pill.cfg
 
Load4 :
	openocd -f board/st_nucleo_f4.cfg

Load5 :
	openocd -f board/bluepill.cfg