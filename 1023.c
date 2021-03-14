#include "stdio.h"
void f_1(int n)
{
	if(n==1) printf("1\n");
	else
	{
		printf("%d\n",n);
		f_1(n-1);
	}
}
void f_2(int n)
{
	printf("%d\n",n);
}
int main()
{
	//f_1(400000);//会因为栈空间耗尽而产生段错误
	int k=0;
	for(k=400000;k>0;k--)
		f_2(k);//每次调用后会释放栈空间，因此可以重复利用，执行过程中几十个字节就足够用了 
	return 0;
}
