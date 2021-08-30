#@copyright ENG:Hossam Magdy

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
	@echo " Finished startup "
%.o: %.c
	$(CC)gcc.exe -c  $(INCS) $(CFLAG) $< -o $@	
	@echo " Finished compiler "
	
$(project_name).hex: $(project_name).elf 
	$(CC)objcopy.exe -O binary $< $@
	@echo " Finished hex file "
	@echo " ------------------------------  "
	
$(project_name).elf: $(OBJ) $(ASOBJ)
	$(CC)ld.exe  -T linker_script.ld -nostartfiles  $(LIBS)  $(OBJ) $(ASOBJ) -o $@	-Map=output.map
	@echo " Finished linker_script "
	
clean_all:
	rm  *.o *.elf *.hex 