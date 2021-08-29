/*$ ENG: Hossam Magdy*/
/*$ Unit3 Lesson1 Embedded C*/
/* Toggle Led */

#include <stdint.h>

typedef volatile unsigned int vuint32_t;

#define RCC_BASE 		0x40021000
#define GPIOA_BASE 		0x40010800

#define RCC_AP2ENR 		*(volatile uint32_t*)(RCC_BASE + 0x18)
#define GBIOA_CRH 		*(volatile uint32_t*)(GPIOA_BASE + 0x04)
#define GBIOA_ODR		*(volatile uint32_t*)(GPIOA_BASE + 0x0c)

#define RCC_IOPAEN		(1 << 2)


typedef union {
	vuint32_t  all_field;
	struct{
		vuint32_t reserved : 13;   //reserved 0-12 bit
		vuint32_t p_13 : 1;		   // pin 3
		  
	} pin;
} R_ODR_T;

volatile R_ODR_T *R_ODR = (volatile R_ODR_T*)(GPIOA_BASE + 0x0C);

//prototype function
void DELAY_fun();

int main(){
	
	RCC_AP2ENR |=RCC_IOPAEN;  //Set PORTA clock enabled
	GBIOA_CRH &= 0xFF0FFFFF;   
	GBIOA_CRH |= 0x00100000;
	
	for(;;){
		R_ODR->pin.p_13 = 1;  			// Led on
		DELAY_fun();					// delay function
		R_ODR->pin.p_13 = 0;			// Led off
		DELAY_fun();
	}
	
	return 0;
}

void DELAY_fun() {
	uint32_t count ;
	for(count =0; count<5000; count++);
}


