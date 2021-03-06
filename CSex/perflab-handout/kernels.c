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
    for (j = 0; j < dim; ++j){//???j++?????????++j
        temp=(dim_2-j)*dim;
        for (i = 0; i < dim; ++i) //???i++?????????++i
        // dst[RIDX(temp, i, dim)] = src[RIDX(i, j, dim)]; //#define RIDX(i,j,n) ((i)*(n)+(j))
        dst[temp+i]=src[i*dim+j];
    }
}//????????????5-6?????????????????????????????????????????????

char rotate_descr_5[] = "rotate_5: Current working version";
void rotate_5(int dim, pixel *src, pixel *dst){
    int i, j;
    int tmp1=dim*31;
    int tmp2=dim*(dim-1);
    int tmp3=dim*dim+32;
    int tmp4=dim+31;//????????????????????????
                    //??????????????????????????????
    dst+=tmp2;//?????????dst????????????????????????dim*(dim-1)
    //??????for?????????????????????32?????????????????????????????????
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
    }//???????????? ??????4x4???????????????????????????
}//#define RIDX(i,j,n) ((i)*(n)+(j))

char smooth_3_descr[] = "smooth_3: Current working version";
void smooth_3(int dim, pixel *src, pixel *dst) {
    pixel_sum rowsum[530][530];
    int i, j, snum;
    //???????????????????????????????????????????????????????????????????????????avg????????????????????????????????????????????????
    for(i = 0; i < dim; i++) {
        rowsum[i][0].red=(src[RIDX(i,0,dim)]. red+src[RIDX(i,1,dim)].red);
        rowsum[i][0].blue=(src[RIDX(i,0,dim)].blue+src[RIDX(i, 1,dim)].blue);
        rowsum[i][0].green=(src[RIDX(i,0,dim)].green+src[RIDX(i, 1,dim)].green);
        rowsum[i][0].num = 2;
        //???????????????????????????????????????????????????+?????????????????????
        for(j = 1; j < dim-1; j++) {
            rowsum[i][j].red = (src[RIDX(i, j-1, dim)].red + src[RIDX(i, j, dim)].red + src[RIDX(i, j+1, dim)].red);
            rowsum[i][j].blue = (src[RIDX(i, j-1, dim)].blue + src[RIDX(i, j, dim)].blue + src[RIDX(i, j+1, dim)].blue);
            rowsum[i][j].green = (src[RIDX(i, j-1, dim)].green + src[RIDX(i, j, dim)].green + src[RIDX(i, j+1, dim)].green);
            rowsum[i][j].num = 3;
        }//???i??????j???(j????????????0-din-2)????????????=????????????j-1???j???j+1?????????
        rowsum[i][dim-1].red = (src[RIDX(i,dim-2,dim)].red + src[RIDX(i,dim-1,dim)].red);
        rowsum[i][dim-1].blue = (src[RIDX(i,dim-2,dim)].blue + src[RIDX(i,dim-1,dim)].blue);
        rowsum[i][dim-1].green = (src[RIDX(i,dim-2,dim)].green + src[RIDX(i,dim-1,dim)].green);
        rowsum[i][dim-1].num = 2;
    }//???????????????????????????????????????????????????????????????????????????????????????
    for(j = 0; j < dim; j++) {
        snum = rowsum[0][j].num + rowsum[1][j].num;
        dst[RIDX(0, j, dim)].red = (unsigned short)((rowsum[0][j].red + rowsum[1][j].red)/snum);
        dst[RIDX(0, j, dim)].blue = (unsigned short)((rowsum[0][j].blue + rowsum[1][j].blue)/snum);
        dst[RIDX(0, j, dim)].green = (unsigned short)((rowsum[0][j].green + rowsum[1][j].green)/snum);
        //???????????????????????????????????????????????????????????????????????????????????????/????????????????????????
        for(i = 0; i < dim - 1; i++) {
            snum = rowsum[i-1][j].num + rowsum[i][j].num + rowsum[i+1][j].num;
            dst[RIDX(i, j, dim)].red = (unsigned short)((rowsum[i-1][j].red + rowsum[i][j].red + rowsum[i+1][j].red)/snum);
            dst[RIDX(i, j, dim)].blue = (unsigned short)((rowsum[i-1][j].blue + rowsum[i][j].blue + rowsum[i+1][j].blue)/snum);
            dst[RIDX(i, j, dim)].green = (unsigned short)((rowsum[i-1][j].green + rowsum[i][j].green + rowsum[i+1][j].green)/snum);
        }//????????????????????????i????????????1-dim-2)??????????????????????????????i-1,i,i+1?????????????????????/????????????????????????
        snum = rowsum[i-1][j].num + rowsum[dim-2][j].num;
        dst[RIDX(dim-1, j, dim)].red = (unsigned short)((rowsum[dim-2][j].red + rowsum[dim-1][j].red)/snum);
        dst[RIDX(dim-1, j, dim)].blue = (unsigned short)((rowsum[dim-2][j].blue + rowsum[dim-1][j].blue)/snum);
        dst[RIDX(dim-1, j, dim)].green = (unsigned short)((rowsum[dim-2][j].green + rowsum[dim-1][j].green)/snum);
    }//????????????????????????????????????????????????????????????????????????????????????/????????????????????????
}

char smooth_4_descr[] = "smooth_4: Current working version";
void smooth_4(int dim, pixel *src, pixel *dst){
    int i, j;
    int ii, jj;
    pixel_sum sum;
    pixel current_pixel;
    for (i = 0; i < dim; i++){
        for (j = 0; j < dim; j++){
            sum.red = sum.green = sum.blue = sum.num = 0;
            for(ii = max(i-1, 0); ii <= min(i+1, dim-1); ii++){
                for(jj = max(j-1, 0); jj <= min(j+1, dim-1); jj++){ 
                    sum.red += (int) src[ii*dim+jj].red;
                    sum.green += (int) src[ii*dim+jj].green;
                    sum.blue += (int) src[ii*dim+jj].blue;
                    sum.num++;
                }
            }
            current_pixel.red = (unsigned short) (sum.red/sum.num);
            current_pixel.green = (unsigned short) (sum.green/sum.num);
            current_pixel.blue = (unsigned short) (sum.blue/sum.num);
            dst[i*dim+j] =current_pixel;
        }
    }//?????????avg????????????
}//???????????????????????????

char smooth_5_descr[] = "smooth_5: Current working version";
void smooth_5(int dim, pixel *src, pixel *dst){
    int i,j; 
    int dim0=dim; 
    int dim1=dim-1;  
    int dim2=dim-2;
    pixel *P1, *P2, *P3; 
    pixel *dst1; 
    P1=src; 
    P2=P1+dim0;//?????????????????????      
    dst->red=(P1->red+(P1+1)->red+P2->red+(P2+1)->red)>>2; 
    dst->green=(P1->green+(P1+1)->green+P2->green+(P2+1)->green)>>2; 
    dst->blue=(P1->blue+(P1+1)->blue+P2->blue+(P2+1)->blue)>>2; 
    dst++;//???????????????
    for(i=1;i<dim1;i++)  {    
        dst->red=(P1->red+(P1+1)->red+(P1+2)->red+P2->red+(P2+1)->red+(P2+2)->red)/6;  
        dst->green=(P1->green+(P1+1)->green+(P1+2)->green+P2->green+(P2+1)->green+(P2+2)->green)/6;   
        dst->blue=(P1->blue+(P1+1)->blue+(P1+2)->blue+P2->blue+(P2+1)->blue+(P2+2)->blue)/6;  
        dst++;  
        P1++;  
        P2++; 
    }//?????????????????????
    dst->red=(P1->red+(P1+1)->red+P2->red+(P2+1)->red)>>2; 
    dst->green=(P1->green+(P1+1)->green+P2->green+(P2+1)->green)>>2; 
    dst->blue=(P1->blue+(P1+1)->blue+P2->blue+(P2+1)->blue)>>2; 
    dst++; 
    P1=src; 
    P2=P1+dim0; 
    P3=P2+dim0;//???????????????
    for(i=1;i<dim1;i++){    
        dst->red=(P1->red+(P1+1)->red+P2->red+(P2+1)->red+P3->red+(P3+1)->red)/6;    
        dst->green=(P1->green+(P1+1)->green+P2->green+(P2+1)->green+P3->green+(P3+1)->green)/6;   
        dst->blue=(P1->blue+(P1+1)->blue+P2->blue+(P2+1)->blue+P3->blue+(P3+1)->blue)/6;  
        dst++;     
        dst1=dst+1;   
        for(j=1;j<dim2;j+=2){         
            dst->red=(P1->red+(P1+1)->red+(P1+2)->red+P2->red+(P2+1)->red+(P2+2)->red+P3->red+(P3+1)->red+(P3+2)->red)/9;
            dst->green=(P1->green+(P1+1)->green+(P1+2)->green+P2->green+(P2+1)->green+(P2+2)->green+P3->green+(P3+1)->green+(P3+2)->green)/9;          
            dst->blue=(P1->blue+(P1+1)->blue+(P1+2)->blue+P2->blue+(P2+1)->blue+(P2+2)->blue+P3->blue+(P3+1)->blue+(P3+2)->blue)/9;            
            dst1->red=((P1+3)->red+(P1+1)->red+(P1+2)->red+(P2+3)->red+(P2+1)->red+(P2+2)->red+(P3+3)->red+(P3+1)->red+(P3+2)->red)/9;           
            dst1->green=((P1+3)->green+(P1+1)->green+(P1+2)->green+(P2+3)->green+(P2+1)->green+(P2+2)->green+(P3+3)->green+(P3+1)->green+(P3+2)->green)/9;           
            dst1->blue=((P1+3)->blue+(P1+1)->blue+(P1+2)->blue+(P2+3)->blue+(P2+1)->blue+(P2+2)->blue+(P3+3)->blue+(P3+1)->blue+(P3+2)->blue)/9;       
            dst+=2;dst1+=2;P1+=2;P2+=2;P3+=2;         
        }//????????????????????????       
        for(;j<dim1;j++){         
            dst->red=(P1->red+(P1+1)->red+(P1+2)->red+P2->red+(P2+1)->red+(P2+2)->red+P3->red+(P3+1)->red+(P3+2)->red)/9;        
            dst->green=(P1->green+(P1+1)->green+(P1+2)->green+P2->green+(P2+1)->green+(P2+2)->green+P3->green+(P3+1)->green+(P3+2)->green)/9;        
            dst->blue=(P1->blue+(P1+1)->blue+(P1+2)->blue+P2->blue+(P2+1)->blue+(P2+2)->blue+P3->blue+(P3+1)->blue+(P3+2)->blue)/9;      
            dst++;
            P1++;
            P2++;
            P3++;     
        }//????????????2????????? 
        dst->red=(P1->red+(P1+1)->red+P2->red+(P2+1)->red+P3->red+(P3+1)->red)/6;      
        dst->green=(P1->green+(P1+1)->green+P2->green+(P2+1)->green+P3->green+(P3+1)->green)/6;     
        dst->blue=(P1->blue+(P1+1)->blue+P2->blue+(P2+1)->blue+P3->blue+(P3+1)->blue)/6;     
        dst++;
        P1+=2;
        P2+=2;
        P3+=2;//??????????????????
    }    
    dst->red=(P1->red+(P1+1)->red+P2->red+(P2+1)->red)>>2;     
    dst->green=(P1->green+(P1+1)->green+P2->green+(P2+1)->green)>>2;    
    dst->blue=(P1->blue+(P1+1)->blue+P2->blue+(P2+1)->blue)>>2;
    dst++;//??????????????? 
    for(i=1;i<dim1;i++){       
        dst->red=(P1->red+(P1+1)->red+(P1+2)->red+P2->red+(P2+1)->red+(P2+2)->red)/6;       
        dst->green=(P1->green+(P1+1)->green+(P1+2)->green+P2->green+(P2+1)->green+(P2+2)->green)/6;       
        dst->blue=(P1->blue+(P1+1)->blue+(P1+2)->blue+P2->blue+(P2+1)->blue+(P2+2)->blue)/6;     
        dst++;
        P1++;
        P2++;    
    }//???????????????
    dst->red=(P1->red+(P1+1)->red+P2->red+(P2+1)->red)>>2;     
    dst->green=(P1->green+(P1+1)->green+P2->green+(P2+1)->green)>>2;    
    dst->blue=(P1->blue+(P1+1)->blue+P2->blue+(P2+1)->blue)>>2;//?????????????????????  
}//???????????????????????????

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
    add_smooth_function(&smooth_4, smooth_4_descr);
    add_smooth_function(&smooth_5, smooth_5_descr);
    /* ... Register additional test functions here */
}

