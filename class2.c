#include <stdio.h>

int getSum(int a, int b){
    return a+b;
}

int main(){
    int a=1, b, c;
    b=a+1;
    c=a*b;
    int d=c/b;
    b=a-c;
    int i;
    for(i=0; i<3; i++){
        if(b<0){
            b=getSum(a, b);
        }
        else{
            break;
        }
    }
    return 0;
}