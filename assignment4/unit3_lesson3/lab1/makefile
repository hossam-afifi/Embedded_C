#@copy right hossam
CC=arm-none-eabi-
LIBS= 
CFLAG= -g -mcpu=arm926ej-s
INCS= -I .
SRC = $(wildcard *.c)
#@convert any source [.c to .o],application.o 
OBJ = $(SRC:.c=.o)
AS = $(wildcard *.s)
ASOBJ = $(AS:.s=.o)

all:  linker_script.bin 
	@echo " DONE ALL "	
	
linker_script.bin: linker_script.elf
	$(CC)objcopy.exe -O binary $< $@
	
linker_script.elf: $(OBJ) $(ASOBJ)
	$(CC)ld.exe  -T linker_startup.ld $(LIBS)  $(OBJ) $(ASOBJ) -o $@ -Map=Map_file.map

%.o: %.c
	$(CC)gcc.exe -c  $(INCS) $(CFLAG) $< -o $@
	@echo " DONE APP "
	
startup.o: startup.s	
	$(CC)as.exe -mcpu=arm926ej-s $< -o $@
	@echo " DONE startup "
	
#UART.o: UART.c
	#$(CC)gcc.exe -c  $(INCS) $(CFLAG) $< -o $@
	#@echo " DONE UART "
	
clean:
	rm *.o *.elf *.bin