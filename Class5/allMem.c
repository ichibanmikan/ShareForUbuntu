#include<stdlib.h>

int a = 0; //全局初始化区
char *p1; //全局未初始化区
int fun(){
	int c;
	c=0;
	return c;
}

int main(){
    int b=2; //栈
    char s[] = "abc"; //栈
    int *p1; //栈
    char *p3 = "123456"; //123456\0在常量区，p3在栈上。
    static int c = 0; //全局（静态）初始化区
    p1 = (int*)malloc(12);
    p1[0]=2;
    p1[1]=3;
}
