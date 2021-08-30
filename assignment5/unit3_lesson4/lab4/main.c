//lEARN_IN_DEPTH
// Hossam Magdy 
// unit3(Embedded C ) Lesson4


//Enable GPIO Register


#define SYSTCTL_RCC2R       (*((volatile unsigned long*) 0x400FE108)) 
#define GPIO_PORT_DIR_R     (*((volatile unsigned long*) 0x40025400)) 
#define GPIO_PORT_DEN_R     (*((volatile unsigned long*) 0x4002551C))
#define GPIO_PORT_DATA_R    (*((volatile unsigned long*) 0x400253FC))


void DELAY_function() {
	volatile unsigned long delay_count;
	for(delay_count=0; delay_count<200000; delay_count++);
}

int main (){
	
	SYSTCTL_RCC2R = 0x20;
	GPIO_PORT_DIR_R |= 1<<3 ;
	GPIO_PORT_DEN_R |= 1<<3 ;
	
	for(;;){
		GPIO_PORT_DATA_R |= 1<<3;  // set bit3
		DELAY_function();
		GPIO_PORT_DATA_R &= ~(1<<3); //reset bit3 
		DELAY_function();
	}
	
	return 0;
}

