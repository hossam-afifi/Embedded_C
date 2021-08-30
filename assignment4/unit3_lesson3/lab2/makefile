#@copy right hossam
CC=arm-none-eabi-
LIBS= 
CFLAG= -mcpu=cortex-m3 -mthumb -gdwarf-2
INCS= -I .
SRC = $(wildcard *.c)
#@convert any source [.c to .o],application.o 
OBJ = $(SRC:.c=.o)
AS = $(wildcard *.s)
ASOBJ = $(AS:.s=.o)

all:  learn_in_depth_cortex_m3.hex
	@echo " DONE ALL "	
learn_in_depth_cortex_m3.hex: learn_in_depth.elf
	$(CC)objcopy.exe -O binary $< $@
	
learn_in_depth.elf: $(OBJ) $(ASOBJ)
	$(CC)ld.exe  -T linker_script.ld $(LIBS)  $(OBJ) $(ASOBJ) -o $@	-Map=output.map
	
%.o: %.c
	$(CC)gcc.exe -c  $(INCS) $(CFLAG) $< -o $@	
	
%.o: %.s	
	$(CC)as.exe $(CFLAG) $< -o $@
	
#UART.o: UART.c
	#$(CC)gcc.exe -c  $(INCS) $(CFLAG) $< -o $@
	#@echo " DONE UART "
	
clean:
	rm -rf *.o *~*.elf *.hex