#include <stdio.h>

long absDiff(long x, long y){
    long result;
    if(x<y){
        result=y-x;
    }
    else{
        result=x-y;
    }
    return result;
}

long cmoveDiff(long x, long y){
    long rval=y-x;
    long eval=x-y;
    long ntest=x>=y;
    if(ntest){
        rval=eval;
    }
    return rval;
}

long condBds(long x, long y){
    return x<y?y-x:x-y;
}

int main(){
    long rex=absDiff(100, 201);
    long rey=cmoveDiff(100, 201);
    return 0;
}