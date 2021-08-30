/* ENG:Hossam Magdy
 * startup.c
*/

#include <stdint.h>

//#define _stack_top   0x20001000 

extern unsigned int _E_text  ;
extern unsigned int _E_DATA  ;
extern unsigned int _S_DATA  ;
extern unsigned int _S_bss   ;
extern unsigned int _E_bss  ;
extern int main (void);

void Reset_Handler(void);
void NMT_Handler(void)           __attribute__((weak,alias("Default_Handler")));
void H_fault_Handler(void)       __attribute__((weak,alias("Default_Handler")));
void MM_fault_Handler(void)      __attribute__((weak,alias("Default_Handler")));
void Bus_fault_Handler(void)     __attribute__((weak,alias("Default_Handler")));
void Usage_fault_Handler(void)   __attribute__((weak,alias("Default_Handler")));

void Default_Handler(){
	Reset_Handler();
}

//booking 1024 B located by throurh .bss un initialized array of 256 elment

static unsigned long Stack_top[256];

void (* const g_p_fu_vectors[])__attribute__((section( ".vector"))) =
{
	(void(*)()) ((unsigned long)Stack_top + sizeof(Stack_top)),
     &Reset_Handler,
     &NMT_Handler ,
	 &H_fault_Handler  
};

void Reset_Handler(void){
int i ;
unsigned int Data_Size =  	 (unsigned char *) &_E_DATA - (unsigned char *)&_S_DATA;
unsigned char * p_src  =     (unsigned char *) &_E_text ;
unsigned char * p_dst  =	 (unsigned char *) &_S_DATA ;

   for( i=0; i<Data_Size; i++)
		*((unsigned char *)p_dst++) = (*(unsigned char *)p_src++);
	
unsigned char bss_size =   (unsigned char *) &_E_bss - (unsigned char *)&_S_bss;
p_dst = (unsigned char *) &_S_bss ;

	for(i=0; i<bss_size; i++)
		*((unsigned char *)p_dst++) = (unsigned char)0;
	
	main();
}



