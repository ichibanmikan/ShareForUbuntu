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
    // int i, j;
    // int dim_2=dim-1;
    // int temp, temp2, tempI, tempDim, tempI2, tempDim2;
    // for (j = 0; j < dim; j+=2){
    //     temp=(dim_2-j)*dim;
    //     temp2=temp-dim;
    //     for (i = 0; i < dim; i+=32){
    //         tempI=temp+i;
    //         tempDim=i*dim+j;
    //         tempI2=temp2+i;
    //         tempDim2=i*dim+j+1;
    //         dst[tempI]=src[tempDim];
    //         dst[tempI+1]=src[tempDim+dim];
    //         dst[tempI+2]=src[tempDim+2*dim];
    //         dst[tempI+3]=src[tempDim+3*dim];
    //         dst[tempI+4]=src[tempDim+4*dim];
    //         dst[tempI+5]=src[tempDim+5*dim];
    //         dst[tempI+6]=src[tempDim+6*dim];
    //         dst[tempI+7]=src[tempDim+7*dim];
    //         dst[tempI+8]=src[tempDim+8*dim];
    //         dst[tempI+9]=src[tempDim+9*dim];
    //         dst[tempI+10]=src[tempDim+10*dim];
    //         dst[tempI+11]=src[tempDim+11*dim];
    //         dst[tempI+12]=src[tempDim+12*dim];
    //         dst[tempI+13]=src[tempDim+13*dim];
    //         dst[tempI+14]=src[tempDim+14*dim];
    //         dst[tempI+15]=src[tempDim+15*dim];
    //         dst[tempI+16]=src[tempDim+16*dim];
    //         dst[tempI+17]=src[tempDim+17*dim];
    //         dst[tempI+18]=src[tempDim+18*dim];
    //         dst[tempI+19]=src[tempDim+19*dim];
    //         dst[tempI+20]=src[tempDim+20*dim];
    //         dst[tempI+21]=src[tempDim+21*dim];
    //         dst[tempI+22]=src[tempDim+22*dim];
    //         dst[tempI+23]=src[tempDim+23*dim];
    //         dst[tempI+24]=src[tempDim+24*dim];
    //         dst[tempI+25]=src[tempDim+25*dim];
    //         dst[tempI+26]=src[tempDim+26*dim];
    //         dst[tempI+27]=src[tempDim+27*dim];
    //         dst[tempI+28]=src[tempDim+28*dim];
    //         dst[tempI+29]=src[tempDim+29*dim];
    //         dst[tempI+30]=src[tempDim+30*dim];
    //         dst[tempI+31]=src[tempDim+31*dim];
    //         dst[tempI2]=src[tempDim2];
    //         dst[tempI2+1]=src[tempDim+dim];
    //         dst[tempI2+2]=src[tempDim2+2*dim];
    //         dst[tempI2+3]=src[tempDim2+3*dim];
    //         dst[tempI2+4]=src[tempDim2+4*dim];
    //         dst[tempI2+5]=src[tempDim2+5*dim];
    //         dst[tempI2+6]=src[tempDim2+6*dim];
    //         dst[tempI2+7]=src[tempDim2+7*dim];
    //         dst[tempI2+8]=src[tempDim2+8*dim];
    //         dst[tempI2+9]=src[tempDim2+9*dim];
    //         dst[tempI2+10]=src[tempDim2+10*dim];
    //         dst[tempI2+11]=src[tempDim2+11*dim];
    //         dst[tempI2+12]=src[tempDim2+12*dim];
    //         dst[tempI2+13]=src[tempDim2+13*dim];
    //         dst[tempI2+14]=src[tempDim2+14*dim];
    //         dst[tempI2+15]=src[tempDim2+15*dim];
    //         dst[tempI2+16]=src[tempDim2+16*dim];
    //         dst[tempI2+17]=src[tempDim2+17*dim];
    //         dst[tempI2+18]=src[tempDim2+18*dim];
    //         dst[tempI2+19]=src[tempDim2+19*dim];
    //         dst[tempI2+20]=src[tempDim2+20*dim];
    //         dst[tempI2+21]=src[tempDim2+21*dim];
    //         dst[tempI2+22]=src[tempDim2+22*dim];
    //         dst[tempI2+23]=src[tempDim2+23*dim];
    //         dst[tempI2+24]=src[tempDim2+24*dim];
    //         dst[tempI2+25]=src[tempDim2+25*dim];
    //         dst[tempI2+26]=src[tempDim2+26*dim];
    //         dst[tempI2+27]=src[tempDim2+27*dim];
    //         dst[tempI2+28]=src[tempDim2+28*dim];
    //         dst[tempI2+29]=src[tempDim2+29*dim];
    //         dst[tempI2+30]=src[tempDim2+30*dim];
    //         dst[tempI2+31]=src[tempDim2+31*dim];
    //     }
    // }
void naive_rotate5(int dim, pixel *src, pixel *dst){
    int i,j,tmp1=dim*dim,tmp2=dim *31,tmp3=tmp1-dim,tmp4=tmp1+32,tmp5=dim+31;
    dst+=tmp3;  
    for(j=0;j<dim;j++){  
        for(i=0; i< dim; i+=32){    
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;  
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;
            dst++;src+=dim;
            *dst=*src;                   
            src++;
            src-=tmp2;
            dst-=tmp5;
        }
        src+=tmp2;
        dst+=tmp4;
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

