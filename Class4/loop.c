#include<stdio.h>

int fact_do(int n);
int fact_for(int n);
int fact_while(int n);
int fact_do_goto(int n);

int main(){
  int n = 5;
  printf("%d\n",fact_do(n));
  printf("%d\n",fact_for(n));
  printf("%d\n",fact_while(n));
  printf("%d\n",fact_do_goto(n));
}

int fact_for(int n){
  int i;
  int result = 1;
  for(i = 2; i <= n; i++)
    result *= i;
  return result;
}

int fact_do(int n)
{
  int result = 1;
  do{
    result *= n;
    n = n - 1;
  } while(n > 1);
  return result;
}

int fact_while(int n){
  int result = 1;
  while(n > 1){
    result *= n;
    n = n - 1;
  }
  return result;
}

int fact_do_goto(int n){
  int result = 1;
loop:
    result *= n;
    n = n - 1;
    if (n > 1)
	goto loop;
  return result;
}
