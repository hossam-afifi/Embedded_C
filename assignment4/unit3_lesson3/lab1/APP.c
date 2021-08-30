
#include <stdio.h>
#include <stdlib.h>

#include "uart.h"

unsigned char  const string_buffer_1[100]  = "Welcome\n";
unsigned const char string_buffer[100]  = "Hello Hossam Magdy --> learn in depth";

int main () {
	uart_send_string( string_buffer_1 );
	
	uart_send_string( string_buffer );
	return 0;
}