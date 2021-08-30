#@copy right hossam
CC=arm-none-eabi-
LIBS= 
CFLAG= -mcpu=cortex-m4 -gdwarf-2 -g -mthumb
INCS= -I .
SRC = $(wildcard *.c)
#@convert any source [.c to .o],application.o 
OBJ = $(SRC:.c=.o)
AS = $(wildcard *.s)
ASOBJ = $(AS:.s=.o)
project_name = unit3_lab4_cortex-m4

all:  $(project_name).bin 
	@echo " DONE ALL "	

%.o: %.c
	$(CC)gcc.exe -c  $(INCS) $(CFLAG) $< -o $@
	@echo " DONE " $@

$(project_name).elf: $(OBJ) $(ASOBJ)
	$(CC)ld.exe  -T linker_script.ld $(LIBS)  $(OBJ) $(ASOBJ) -o $@ -Map=Map_file.map
	cp $(project_name).elf $(project_name).axf
	
$(project_name).bin: $(project_name).elf
	$(CC)objcopy.exe -O binary $< $@
	
clean_all:
	rm *.o *.elf *.bin

clean:
	rm *.elf *.bin