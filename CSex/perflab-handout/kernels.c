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
void rotate_5(int dim, pixel *src, pixel *dst){
    int i, j;
    int tmp1=dim*31, tmp2=dim*(dim-1), tmp3=dim*dim+32, tmp4=dim+31;//定义四个中间变量，
                                                                    //减少循环中的计算次数
    dst+=tmp2;//将数组dst看作地址首，先加dim*(dim-1)
    //破拆for循环，每次执行32步，可以大规模优化程序
    for(i=0; i< dim; i+=32){         
        for(j=0;j<dim;j++){    
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
            src-=tmp1;
            dst-=tmp4;
        }
        src+=tmp1;
        dst+=tmp3;
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

char smooth_2_descr[] = "smooth_2: Current working version";
void smooth_2(int dim, pixel *src, pixel *dst) {
    int i, j;
    for (i = 0; i < dim; i+=4){
        for (j = 0; j < dim; j+=4){
            dst[RIDX(i, j, dim)] = avg(dim, i, j, src);
            dst[RIDX(i, j+1, dim)] = avg(dim, i, j+1, src);
            dst[RIDX(i, j+2, dim)] = avg(dim, i, j+2, src);
            dst[RIDX(i, j+3, dim)] = avg(dim, i, j+3, src);

            dst[RIDX(i+1, j, dim)] = avg(dim, i+1, j, src);
            dst[RIDX(i+1, j+1, dim)] = avg(dim, i+1, j+1, src);
            dst[RIDX(i+1, j+2, dim)] = avg(dim, i+1, j+2, src);
            dst[RIDX(i+1, j+3, dim)] = avg(dim, i+1, j+3, src);

            dst[RIDX(i+2, j, dim)] = avg(dim, i+2, j, src);
            dst[RIDX(i+2, j+1, dim)] = avg(dim, i+2, j+1, src);
            dst[RIDX(i+2, j+2, dim)] = avg(dim, i+2, j+2, src);
            dst[RIDX(i+2, j+3, dim)] = avg(dim, i+2, j+3, src);

            dst[RIDX(i+3, j, dim)] = avg(dim, i+3, j, src);
            dst[RIDX(i+3, j+1, dim)] = avg(dim, i+3, j+1, src);
            dst[RIDX(i+3, j+2, dim)] = avg(dim, i+3, j+2, src);
            dst[RIDX(i+3, j+3, dim)] = avg(dim, i+3, j+3, src);
        }
    }//循环展开
}//#define RIDX(i,j,n) ((i)*(n)+(j))

char smooth_3_descr[] = "smooth1: 消除循环低效率";
void smooth_3(int dim, pixel *src, pixel *dst) {
    pixel_sum rowsum[530][530];
    int i, j, snum;
    //执行大规模的循环展开，直接对两层循环执行破拆，先处理行再处理列
    for(i = 0; i < dim; i++) {
        rowsum[i][0].red=(src[RIDX(i,0,dim)]. red+src[RIDX(i,1,dim)].red);
        rowsum[i][0].blue=(src[RIDX(i,0,dim)].blue+src[RIDX(i, 1,dim)].blue);
        rowsum[i][0].green=(src[RIDX(i,0,dim)].green+src[RIDX(i, 1,dim)].green);
        rowsum[i][0].num = 2;
        //每一行第一列的值都等于当前行第一列+第二列的颜色值
        for(j = 1; j < dim-1; j++) {
            rowsum[i][j].red = (src[RIDX(i, j-1, dim)].red + src[RIDX(i, j, dim)].red + src[RIDX(i, j+1, dim)].red);
            rowsum[i][j].blue = (src[RIDX(i, j-1, dim)].blue + src[RIDX(i, j, dim)].blue + src[RIDX(i, j+1, dim)].blue);
            rowsum[i][j].green = (src[RIDX(i, j-1, dim)].green + src[RIDX(i, j, dim)].green + src[RIDX(i, j+1, dim)].green);
            rowsum[i][j].num = 3;
        }//第i行第j列(j的范围为0-din-2)的颜色值=当前行第j-1，j，j+1列的值
        rowsum[i][dim-1].red = (src[RIDX(i,dim-2,dim)].red + src[RIDX(i,dim-1,dim)].red);
        rowsum[i][dim-1].blue = (src[RIDX(i,dim-2,dim)].blue + src[RIDX(i,dim-1,dim)].blue);
        rowsum[i][dim-1].green = (src[RIDX(i,dim-2,dim)].green + src[RIDX(i,dim-1,dim)].green);
        rowsum[i][dim-1].num = 2;
    }//每一行最后一列的颜色值都等于当前行最后一列和前一列的颜色值
    for(j = 0; j < dim; j++) {
        snum = rowsum[0][j].num + rowsum[1][j].num;
        dst[RIDX(0, j, dim)].red = (unsigned short)((rowsum[0][j].red + rowsum[1][j].red)/snum);
        dst[RIDX(0, j, dim)].blue = (unsigned short)((rowsum[0][j].blue + rowsum[1][j].blue)/snum);
        dst[RIDX(0, j, dim)].green = (unsigned short)((rowsum[0][j].green + rowsum[1][j].green)/snum);
        //让当前列第一行的颜色值等于当前列第一行和第二行的颜色值之和/该处周围的方格数
        for(i = 0; i < dim - 1; i++) {
            snum = rowsum[i-1][j].num + rowsum[i][j].num + rowsum[i+1][j].num;
            dst[RIDX(i, j, dim)].red = (unsigned short)((rowsum[i-1][j].red + rowsum[i][j].red + rowsum[i+1][j].red)/snum);
            dst[RIDX(i, j, dim)].blue = (unsigned short)((rowsum[i-1][j].blue + rowsum[i][j].blue + rowsum[i+1][j].blue)/snum);
            dst[RIDX(i, j, dim)].green = (unsigned short)((rowsum[i-1][j].green + rowsum[i][j].green + rowsum[i+1][j].green)/snum);
        }//让当前列当前行（i的范围为1-dim-2)的颜色值等于当前列第i-1,i,i+1行的颜色值之和/该处周围的方格数
        snum = rowsum[i-1][j].num + rowsum[dim-2][j].num;
        dst[RIDX(dim-1, j, dim)].red = (unsigned short)((rowsum[dim-2][j].red + rowsum[dim-1][j].red)/snum);
        dst[RIDX(dim-1, j, dim)].blue = (unsigned short)((rowsum[dim-2][j].blue + rowsum[dim-1][j].blue)/snum);
        dst[RIDX(dim-1, j, dim)].green = (unsigned short)((rowsum[dim-2][j].green + rowsum[dim-1][j].green)/snum);
    }//让当前列最后一行的颜色等于当前列当前行和上一行的颜色之和/该处周围的颜色数
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
    add_smooth_function(&smooth_2, smooth_2_descr);
    add_smooth_function(&smooth_3, smooth_3_descr);
    /* ... Register additional test functions here */
}

