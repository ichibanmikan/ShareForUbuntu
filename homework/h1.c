#include <windows.h>
#include <stdio.h>

// void inner4(vec_ptr x, vec_ptr y, data_t* dest){
//     long int i;
//     int length=vec_length(x);
//     data_t* xdata=get_vec_start(x);
//     data_t* ydata=get_vec_start(y);
//     data_t sum=(data_t) 0;
//     int limit=length-2;
//     for (i=0; i<limit; i+=3){
//         sum+=xdata[i]*ydata[i];
//         sum+=xdata[i+1]*ydata[i+1];
//         sum+=xdata[i+2]*ydata[i+2];
//     }
//     for(; i<length; i++){
//         sum+=xdata[i]*ydata[i];
//     }
//     *dest=sum;
// }
// /*
// A:整数和浮点数吞吐量界限均为1.00 共需要访问内存两次(两次load) 因此CPE的极限最小值是2.00
// B:关键路径上仍有n个浮点加法 同之前一样 因此循环展开并未提高效率
// */



double polyh_2(double a[], double x, int degree){
    long int i;
    double result=a[degree];
    long int limit=degree-3;
    double t1=x*x;
    double t2=t1*t1;  
    double s=0.0, pow=1.0; 
    double v1, v2;
    for(i=0; i<=limit; i+=4){
        v1=a[i]+a[i+1]*x;
        v2=a[i+2]+a[i+3]*x;
        v1=v1+v2*t1;
        s=s+v1*pow;
        pow*=t2;
    }
    return result;
}


double polyh(double a[], double x, int degree){
    long int i;
    double result=a[degree];
    for(i=degree-1; i>=0; i--){
        result=a[i]+x*result;
    }
    return result;
}

int main(){
    double a[10005];
    int i;
    for(i=0; i<10000; i++){
        a[i]=((double)(i%7))-0.01*(double)i;
    }

    LARGE_INTEGER LIB_polyh_2;
    LARGE_INTEGER LIE_polyh_2;
    LARGE_INTEGER FREQ_polyh_2;
    QueryPerformanceFrequency(&FREQ_polyh_2);
    QueryPerformanceCounter(&LIB_polyh_2);
    polyh_2(a, 3, 10000);
    QueryPerformanceCounter(&LIE_polyh_2);
    double time_polyh_2=(double)(LIE_polyh_2.QuadPart-LIB_polyh_2.QuadPart)/((double)FREQ_polyh_2.QuadPart);
    printf("polyh_2: %lf s\n", time_polyh_2);

    LARGE_INTEGER LIB_polyh;
    LARGE_INTEGER LIE_polyh;
    LARGE_INTEGER FREQ_polyh;
    QueryPerformanceFrequency(&FREQ_polyh);
    QueryPerformanceCounter(&LIB_polyh);
    polyh(a, 3, 10000);
    QueryPerformanceCounter(&LIE_polyh);
    double time_polyh=(double)(LIE_polyh.QuadPart-LIB_polyh.QuadPart)/((double)FREQ_polyh.QuadPart);
    printf("polyh: %lf s\n", time_polyh);
    return 0;
}























