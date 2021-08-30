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
project_name = toggle_led

all:  $(project_name).hex
	@echo " DONE ALL "	
	
%.o: %.s	
	$(CC)as.exe $(CFLAG) $< -o $@
%.o: %.c
	$(CC)gcc.exe -c  $(INCS) $(CFLAG) $< -o $@	
	
$(project_name).hex: $(project_name).elf
	$(CC)objcopy.exe -O binary $< $@
	
$(project_name).elf: $(OBJ) $(ASOBJ)
	$(CC)ld.exe  -T linker_script.ld $(LIBS)  $(OBJ) $(ASOBJ) -o $@	-Map=output.map
	
%.o: %.c
	$(CC)gcc.exe -c  $(INCS) $(CFLAG) $< -o $@	
	
	
clean:
	rm  *.o *.elf *.hex