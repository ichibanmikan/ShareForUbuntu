#include "stdio.h"


int main()
{
	int a=1;
	if(a++>0 || a++<2) 
		printf("true\n");
	else
		printf("false\n");
	printf("a=%d\n",a);
	return 0;
}
