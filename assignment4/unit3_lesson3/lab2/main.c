#include <stdint.h>

typedef volatile unsigned int vuint32_t;

#define RCC_BASE 		0x40021000
#define GPIOA_BASE 		0x40010800

#define RCC_AP2ENR 		*(volatile uint32_t*)(RCC_BASE + 0x18)
#define GBIOA_CRH 		*(volatile uint32_t*)(GPIOA_BASE + 0x04)
#define GBIOA_ODR		*(volatile uint32_t*)(GPIOA_BASE + 0x0c)

#define RCC_IOPAEN		(1 << 2)
#define GPIOA13			(1UL << 13)

typedef union {
	vuint32_t  all_field;
	struct{
		vuint32_t reserved : 13;
		vuint32_t p_13 : 1;
	} pin;
} R_ODR_T;

volatile R_ODR_T *R_ODR = (volatile R_ODR_T*)(GPIOA_BASE + 0x0C);

int main(){
	int count ;
	RCC_AP2ENR |=RCC_IOPAEN;
	GBIOA_CRH &= 0xFF0FFFFF;
	GBIOA_CRH |= 0x00200000;
	while(1){
		R_ODR->pin.p_13 = 1;
		//R_ODR->all_field = 0xFFFFFFFF;
		for(count =0; count<5000; count++);
		R_ODR->pin.p_13 = 0;
		//R_ODR->all_field = 0x0;
		for(count =0; count<5000; count++);
	}
	return 0;
}