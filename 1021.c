#include <stdio.h>

int f_area(int x,int y)
{
	int z=0;	
	z=x*y;
	return z;
}
int main()
{
	int a=100;
	int b=25;
	int c=0;
	c=f_area(a,b);
	printf("Area is %d\n",c);
	return 0;
}
