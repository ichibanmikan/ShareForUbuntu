/********************************************************
 * Kernels to be optimized for the CS:APP Performance Lab
 ********************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "defs.h"

/* 
 * Please fill in the following team struct 
 */
team_t team = {
    "CX",              /* Team name */

    "CX",     /* First member full name */
    "1278074877@qq.com",  /* First member email address */

    "",                   /* Second member full name (leave blank if none) */
    ""                    /* Second member email addr (leave blank if none) */
};

/***************
 * ROTATE KERNEL
 ***************/

/******************************************************
 * Your different versions of the rotate kernel go here
 ******************************************************/

/* 
 * naive_rotate - The naive baseline version of rotate 
 */
char naive_rotate_descr[] = "naive_rotate: Naive baseline implementation";
void naive_rotate(int dim, pixel *src, pixel *dst) 
{
    int i, j;

    for (i = 0; i < dim; i++)
	for (j = 0; j < dim; j++)
	    dst[RIDX(dim-1-j, i, dim)] = src[RIDX(i, j, dim)];
}

/* 
 * rotate - Your current working version of rotate
 * IMPORTANT: This is the version you will be graded on
 */
/*char naive_rotate_2_descr[] = "naive_rotate_2: Naive baseline implementation";
void naive_rotate_2(int dim, pixel *src, pixel *dst) 
{
    int i, j;
    int temp;
    for (i = 0; i < dim; i++)
	temp=dim-i-1;
	for (j = 0; j < dim; j++)
	    dst[RIDX(temp, j, dim)] = src[RIDX(j, i, dim)];
}*/

char rotate_descr[] = "rotate: Current working version";
void rotate(int dim, pixel *src, pixel *dst) 
{
    naive_rotate(dim, src, dst);
}
char rotate_descr_2[] = "rotate_2: Current working version";
void rotate_2(int dim, pixel *src, pixel *dst) 
{
    int i, j;
    int dim_2=dim-1;
    int temp;
    for (j = 0; j < dim; j++){
        temp=dim_2-j;
	for (i = 0; i < dim; i++)
	    dst[RIDX(temp, i, dim)] = src[RIDX(i, j, dim)];
    }
}

char rotate_descr_3[] = "rotate_3: Current working version";
void rotate_3(int dim, pixel *src, pixel *dst) 
{
    int i, j;
    int dim_2=dim-1;
    int temp;
    for (j = 0; j < dim; j++){
        temp=(dim_2-j)*dim;
        for (i = 0; i < dim; i++)
        // dst[RIDX(temp, i, dim)] = src[RIDX(i, j, dim)]; //#define RIDX(i,j,n) ((i)*(n)+(j))
        dst[temp+i]=src[i*dim+j];
    }
}

char rotate_descr_4[] = "rotate_4: Current working version";
void rotate_4(int dim, pixel *src, pixel *dst) {
    int i, j;
    int dim_2=dim-1;
    int temp;
    for (j = 0; j < dim; ++j){//将j++改变为++j
        temp=(dim_2-j)*dim;
        for (i = 0; i < dim; ++i) //将i++改变为++i
        // dst[RIDX(temp, i, dim)] = src[RIDX(i, j, dim)]; //#define RIDX(i,j,n) ((i)*(n)+(j))
        dst[temp+i]=src[i*dim+j];
    }
}//根据课本5-6内容及查阅相关资料进行如上优化

char rotate_descr_5[] = "rotate_5: Current working version";
void rotate_5(int dim, pixel *src, pixel *dst) {
    int i, j;
    int dim_2=dim-1;
    int temp, temp2;
    for (j = 0; j < dim; j+=2){
        temp=(dim_2-j)*dim;
        temp2=(dim_2-j-1)*dim;
        for (i = 0; i < dim; i+=32){
            dst[temp+i]=src[i*dim+j];
            dst[temp+i+1]=src[(i+1)*dim+j];
            dst[temp+i+2]=src[(i+2)*dim+j];
            dst[temp+i+3]=src[(i+3)*dim+j];
            dst[temp+i+4]=src[(i+4)*dim+j];
            dst[temp+i+5]=src[(i+5)*dim+j];
            dst[temp+i+6]=src[(i+6)*dim+j];
            dst[temp+i+7]=src[(i+7)*dim+j];
            dst[temp+i+8]=src[(i+8)*dim+j];
            dst[temp+i+9]=src[(i+9)*dim+j];
            dst[temp+i+10]=src[(i+10)*dim+j];
            dst[temp+i+11]=src[(i+11)*dim+j];
            dst[temp+i+12]=src[(i+12)*dim+j];
            dst[temp+i+13]=src[(i+13)*dim+j];
            dst[temp+i+14]=src[(i+14)*dim+j];
            dst[temp+i+15]=src[(i+15)*dim+j];
            dst[temp+i+16]=src[(i+16)*dim+j];
            dst[temp+i+17]=src[(i+17)*dim+j];
            dst[temp+i+18]=src[(i+18)*dim+j];
            dst[temp+i+19]=src[(i+19)*dim+j];
            dst[temp+i+20]=src[(i+20)*dim+j];
            dst[temp+i+21]=src[(i+21)*dim+j];
            dst[temp+i+22]=src[(i+22)*dim+j];
            dst[temp+i+23]=src[(i+23)*dim+j];
            dst[temp+i+24]=src[(i+24)*dim+j];
            dst[temp+i+25]=src[(i+25)*dim+j];
            dst[temp+i+26]=src[(i+26)*dim+j];
            dst[temp+i+27]=src[(i+27)*dim+j];
            dst[temp+i+28]=src[(i+28)*dim+j];
            dst[temp+i+29]=src[(i+29)*dim+j];
            dst[temp+i+30]=src[(i+30)*dim+j];
            dst[temp+i+31]=src[(i+31)*dim+j];
            dst[temp2+i]=src[i*dim+j+1];
            dst[temp2+i+1]=src[(i+1)*dim+j+1];
            dst[temp2+i+2]=src[(i+2)*dim+j+1];
            dst[temp2+i+3]=src[(i+3)*dim+j+1];
            dst[temp2+i+4]=src[(i+4)*dim+j+1];
            dst[temp2+i+5]=src[(i+5)*dim+j+1];
            dst[temp2+i+6]=src[(i+6)*dim+j+1];
            dst[temp2+i+7]=src[(i+7)*dim+j+1];
            dst[temp2+i+8]=src[(i+8)*dim+j+1];
            dst[temp2+i+9]=src[(i+9)*dim+j+1];
            dst[temp2+i+10]=src[(i+10)*dim+j+1];
            dst[temp2+i+11]=src[(i+11)*dim+j+1];
            dst[temp2+i+12]=src[(i+12)*dim+j+1];
            dst[temp2+i+13]=src[(i+13)*dim+j+1];
            dst[temp2+i+14]=src[(i+14)*dim+j+1];
            dst[temp2+i+15]=src[(i+15)*dim+j+1];
            dst[temp2+i+16]=src[(i+16)*dim+j+1];
            dst[temp2+i+17]=src[(i+17)*dim+j+1];
            dst[temp2+i+18]=src[(i+18)*dim+j+1];
            dst[temp2+i+19]=src[(i+19)*dim+j+1];
            dst[temp2+i+20]=src[(i+20)*dim+j+1];
            dst[temp2+i+21]=src[(i+21)*dim+j+1];
            dst[temp2+i+22]=src[(i+22)*dim+j+1];
            dst[temp2+i+23]=src[(i+23)*dim+j+1];
            dst[temp2+i+24]=src[(i+24)*dim+j+1];
            dst[temp2+i+25]=src[(i+25)*dim+j+1];
            dst[temp2+i+26]=src[(i+26)*dim+j+1];
            dst[temp2+i+27]=src[(i+27)*dim+j+1];
            dst[temp2+i+28]=src[(i+28)*dim+j+1];
            dst[temp2+i+29]=src[(i+29)*dim+j+1];
            dst[temp2+i+30]=src[(i+30)*dim+j+1];
            dst[temp2+i+31]=src[(i+31)*dim+j+1];
        }
    }
}

/*********************************************************************
 * register_rotate_functions - Register all of your different versions
 *     of the rotate kernel with the driver by calling the
 *     add_rotate_function() for each test function. When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_rotate_functions() 
{
    add_rotate_function(&naive_rotate, naive_rotate_descr);   
    add_rotate_function(&rotate, rotate_descr);   
    add_rotate_function(&rotate_2, rotate_descr_2);
    add_rotate_function(&rotate_3, rotate_descr_3);
    add_rotate_function(&rotate_4, rotate_descr_4);
    add_rotate_function(&rotate_5, rotate_descr_5);
    /* ... Register additional test functions here */
}


/***************
 * SMOOTH KERNEL
 **************/

/***************************************************************
 * Various typedefs and helper functions for the smooth function
 * You may modify these any way you like.
 **************************************************************/

/* A struct used to compute averaged pixel value */
typedef struct {
    int red;
    int green;
    int blue;
    int num;
} pixel_sum;

/* Compute min and max of two integers, respectively */
static int min(int a, int b) { return (a < b ? a : b); }
static int max(int a, int b) { return (a > b ? a : b); }

/* 
 * initialize_pixel_sum - Initializes all fields of sum to 0 
 */
static void initialize_pixel_sum(pixel_sum *sum) 
{
    sum->red = sum->green = sum->blue = 0;
    sum->num = 0;
    return;
}

/* 
 * accumulate_sum - Accumulates field values of p in corresponding 
 * fields of sum 
 */
static void accumulate_sum(pixel_sum *sum, pixel p) 
{
    sum->red += (int) p.red;
    sum->green += (int) p.green;
    sum->blue += (int) p.blue;
    sum->num++;
    return;
}

/* 
 * assign_sum_to_pixel - Computes averaged pixel value in current_pixel 
 */
static void assign_sum_to_pixel(pixel *current_pixel, pixel_sum sum) 
{
    current_pixel->red = (unsigned short) (sum.red/sum.num);
    current_pixel->green = (unsigned short) (sum.green/sum.num);
    current_pixel->blue = (unsigned short) (sum.blue/sum.num);
    return;
}

/* 
 * avg - Returns averaged pixel value at (i,j) 
 */
static pixel avg(int dim, int i, int j, pixel *src) 
{
    int ii, jj;
    pixel_sum sum;
    pixel current_pixel;

    initialize_pixel_sum(&sum);
    for(ii = max(i-1, 0); ii <= min(i+1, dim-1); ii++) 
	for(jj = max(j-1, 0); jj <= min(j+1, dim-1); jj++) 
	    accumulate_sum(&sum, src[RIDX(ii, jj, dim)]);

    assign_sum_to_pixel(&current_pixel, sum);
    return current_pixel;
}

/******************************************************
 * Your different versions of the smooth kernel go here
 ******************************************************/

/*
 * naive_smooth - The naive baseline version of smooth 
 */
char naive_smooth_descr[] = "naive_smooth: Naive baseline implementation";
void naive_smooth(int dim, pixel *src, pixel *dst) 
{
    int i, j;

    for (i = 0; i < dim; i++)
	for (j = 0; j < dim; j++)
	    dst[RIDX(i, j, dim)] = avg(dim, i, j, src);
}

/*
 * smooth - Your current working version of smooth. 
 * IMPORTANT: This is the version you will be graded on
 */
char smooth_descr[] = "smooth: Current working version";
void smooth(int dim, pixel *src, pixel *dst) 
{
    naive_smooth(dim, src, dst);
}


/********************************************************************* 
 * register_smooth_functions - Register all of your different versions
 *     of the smooth kernel with the driver by calling the
 *     add_smooth_function() for each test function.  When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_smooth_functions() {
    add_smooth_function(&smooth, smooth_descr);
    add_smooth_function(&naive_smooth, naive_smooth_descr);
    /* ... Register additional test functions here */
}

