/* 
 * CS:APP Data Lab 
 * 
 * <Please put your name and userid here>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* 
 * bitAnd - x&y using only ~ and | 
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y) {
  return ~(~x|~y);
}//德摩根律，用或非表示与
/* 
 * getByte - Extract byte n from word x
 *   Bytes numbered from 0 (LSB) to 3 (MSB)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int getByte(int x, int n) {
  return (x>>(n<<3))&0xff;
}//取整型x的第n个字节，n左移3位，即n*2^8,因为每个字节有8位：如果取第1个字节就右移8位然后和0x000000ff按位与
/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3 
 */
int logicalShift(int x, int n) {
  	int mask;
  	x>>=n;
    mask=(((~(1<<31))>>n)<<1)|1;
    return x&mask;
}
/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int bitCount(int x) {
  int temp1=((0x55<<24)|(0x55<<16)|(0x55<<8)|(0x55));//0x55555555
  int temp2=((0x33<<24)|(0x33<<16)|(0x33<<8)|(0x33));//0x33333333
  int temp3=((0x0f<<24)|(0x0f<<16)|(0x0f<<8)|(0x0f));//0x0f0f0f0f
  int temp4=((0x00<<24)|(0xff<<16)|(0x00<<8)|(0xff));//0x00ff00ff
  int temp5=((0x00<<24)|(0x00<<16)|(0xff<<8)|(0xff));//0x0000ffff
  x=(x&temp1)+((x>>1)&temp1);//
  x=(x&temp2)+((x>>2)&temp2);
  x=(x+(x>>4))&temp3;
  x=(x+(x>>8))&temp4;
  x=(x+(x>>16))&temp5;
  return x;
}
/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x) {
  int tempx=~x+1;//tempx是x的相反数，非零数的相反数与原数符号一定相反而0的相反数仍是0
  return (~((tempx>>31)||(x>>31)))&0x01;//(tempx>>31)||(x>>31)在非0时必然是0xffffffff而x==0时是
                                        //0x00000000
                                        //按位取反后非0时得到0x00000000,x==0时得到0xffffffff。
                                        //然后和0x00000001相与，全零得到1，非0就得到了0
}
/* 
 * tmin - return minimum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmin(void) {
  int a=0x80;
  return a<<24;
}//返回最小的二进制补码，就是0x80000000
/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n) {
  // int a=0x0;
  // a=(~a+(~1+1));
  // return !((x>>(n+(~1+1)))&a);
  int shiftNum=32+(~n)+1; /*按照补码表示的规则，32位的int型变量，从0-31位，
                            0出现的约靠前表示该数的绝对值越大。
                            因此对于一个数，前移32-n位，如果可以用n位二进制补码表示，
                            那么说明它的绝对值"不够大",即前32-n位都是1，后n位才出现0.
                            所以按照符号位补位的原则，先左移32-n位再右移32-n位得到的数字和原来的一样时
                            (前32-n位都是1)能用n位二进制补码表示*/
  return !((x<<shiftNum>>shiftNum)^x);
}
/* 
 * divpwr2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: divpwr2(15,1) = 7, divpwr2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int divpwr2(int x, int n) {
    int isposi=x>>31;//用于判断正负数，非负数全是1，负数全是0
    return (x+(isposi&((1<<n)+(~0))))>>n;//为保证负数移位值和2^n统一起来，从数轴上看应该是+2^n-1即(1<<n)+(~0)
}
/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
  return ~x+1; //求相反数，按位取反+1
}
/* 
 * isPositive - return 1 if x > 0, return 0 otherwise 
 *   Example: isPositive(-1) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 3
 */
int isPositive(int x) {
  // int a=0x0;
  // a=(~a+(~1+1));
  // return (!!x)&(~(a|(x>>31))); //x>>31,如果是负的得到ffffffff,正的得到0，再和-2(即为a, 0xfffffffe)相或取反，正的得1负的得0.对于0，!!x保证了x==0得到0,x!=0得到1，再和之前的结果按位与.正的1&1还是1,负的1与0得到0，零0与1得到0.
  return !((!x)|(x>>31));//x>>31,如果是负的得到ffffffff,非负的得到0。!x,0得到1，非0得到0.此时0得到1，负数得到ffffffff，正数得到0.再取反正数返回1，非正数返回0
}//x<=0返回0
/* 
 * isLessOrEqual - if x <= y  then return 1, else return 0 
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y) {
  int tempx=x>>31;
  int tempy=y>>31;
  int a=0x0;
  a=(~a+(~1+1));
  // return ((~tempy|tempx)&1)|(!((!!(x+(~y+1)))&(~(a|((x+(~y+1))>>31)))));
  return (((~tempy|tempx)&1)&(tempy^tempx))|(!!((!(x+(~y+1)))|((x+(~y+1))>>31))); //y符号位扩展31位取反和x符号位扩展相或并且按位与1，xy正负不同时满足得1不满足得0。同时按照isPositive函数的方法并取反，x-y(x+(~y+1))小于0则得
}

/*
 * ilog2 - return floor(log base 2 of x), where x > 0
 *   Example: ilog2(16) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 90
 *   Rating: 4
 */
int ilog2(int x) {
  int temp0, temp1, temp2, temp3, temp4;
  int isHave0=!!(x>>16); //右移16位判断前16位有没有1，有就是1没有是0
  temp0=isHave0<<4;
  x>>=temp0;//有就右移16位，因为1必定在前16位里面
  int isHave1=!!(x>>8); //右移8位判断后16位的前8位有没有1，有就是1没有是0
  temp1=isHave1<<3;
  x=x>>temp1;//有就右移8位，因为1必定在后16位的前8位里面
  int isHave2=!!(x>>4); //右移4位判断后8位的前4位有没有1，有就是1没有是0
  temp2=isHave2<<2;
  x=x>>temp2;//有就右移4位，因为1必定在后8位的前4位里面
  int isHave3=!!(x>>2); //右移2位判断后4位的前2位有没有1，有就是1没有是0
  temp3=isHave3<<1;
  x=x>>temp3;//有就右移2位，因为1必定在后4位的前2位里面
  int isHave4=!!(x>>1); //右移2位判断后2位的前1位有没有1，有就是1没有是0
  temp4=isHave4;//有就是1没有就0，直接赋值
  return temp0+temp1+temp2+temp3+temp4;
}//求log(x),按照2的幂次数(2 4 8 16)进行判断,计算出1在最高在哪个位置
/* 
 * float_neg - Return bit-level equivalent of expression -f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_neg(unsigned uf) {
 return 2;
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
  return 2;
}
/* 
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf) {
  return 2;
}
