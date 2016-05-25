#include <stdio.h>
#include "calc.h"

int main()
{
	int res;
	res = addition(5,15);
	printf("Addition: %d\n",res);
	res = subtraction(45,30);
	printf("Subtraction: %d\n",res);
	res = division(300,10);
	printf("Division: %d\n",res);
	res = multiplication(8,5);
	printf("Multiplication: %d\n",res);
	return 0;
}
