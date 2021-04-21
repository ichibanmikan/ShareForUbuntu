#include <stdio.h>

int Fac_for(int n){
    int result=1;
    for (; n>0; n--){
        result*=n;
    }
    return result;
} 

int Fac_while(int n){
    int result=1;
    while(n>0){
        result*=n;
        n--;
    }
    return result;
}

int Fac_doWhile(int n){
    int result=1;
    do{
        result*=n;
        n--;
    }
    while(n>0);
    return result;
}

int Fac_goTo(int n){
    int result=1;
    loop:
        result*=n;
        n--;
        if(n>0){
            goto loop;
        }
    return result;
}

int main(){
    int a;
    scanf("%d", &a);
    printf("%d\n", Fac_goTo(a));
    return 0;
}