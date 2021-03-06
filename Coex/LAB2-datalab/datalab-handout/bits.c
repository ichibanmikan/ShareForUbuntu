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
}//?????????????????????????????????
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
}//?????????x??????n????????????n??????3?????????n*2^8,
 //?????????????????????8??????????????????1????????????
 //??????8????????????0x000000ff?????????
/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3 
 */
int logicalShift(int x, int n) {
  	int temp;
  	x>>=n;//x??????????????????n???
    temp=(((~(1<<31))>>n)<<1)|1;//1<<31??????0x80000000,
                                //????????????0x7fffffff,
                                //??????n????????????31-n??????1???
                                //???n+1??????0????????????1????????????n??????0
                                //??????x???temp?????????
                                //????????????x?????????????????????x>=0?????????n?????????0
                                //x<0????????????1??????????????????x?????????temp,
                                //????????????n????????????0????????????????????????
    return x&temp;
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
  x=(x&temp1)+((x>>1)&temp1);
  x=(x&temp2)+((x>>2)&temp2);
  x=(x+(x>>4))&temp3;
  x=(x+(x>>8))&temp4;
  x=(x+(x>>16))&temp5;
  return x;//??????????????????????????????????????????????????????????????????????????????????????????1
}
/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x) {
  int tempx=~x+1;//tempx???x??????????????????????????????????????????????????????????????????0??????????????????0
  return (~((tempx>>31)|(x>>31)))&0x01;//(tempx>>31)|(x>>31)??????0????????????0xffffffff???x==0??????
                                        //0x00000000
                                        //??????????????????0?????????0x00000000,x==0?????????0xffffffff???
                                        //?????????0x00000001?????????????????????1??????0????????????0
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
}//???????????????????????????????????????0x80000000
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
  int shiftNum=32+(~n)+1; /*??????????????????????????????32??????int???????????????0-31??????
                            0???????????????????????????????????????????????????
                            ??????????????????????????????32-n?????????????????????n???????????????????????????
                            ???????????????????????????"?????????",??????32-n?????????1??????n????????????0.
                            ????????????????????????????????????????????????32-n????????????32-n????????????
                            ???????????????????????????(???32-n?????????1)??????n????????????????????????*/
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
    int isposi=x>>31;//???????????????????????????????????????1???????????????0
    return (x+(isposi&((1<<n)+(~0))))>>n;//???????????????????????????2^n???????????????
                                         //????????????????????????+2^n-1???(1<<n)+(~0)
}
/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
  return ~x+1; //???????????????????????????+1
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
  // return (!!x)&(~(a|(x>>31))); //x>>31,?????????????????????ffffffff,????????????0?????????-2(??????a, 0xfffffffe)
  //????????????????????????1?????????0.??????0???!!x?????????x==0??????0,x!=0??????1?????????????????????????????????.
  //??????1&1??????1,??????1???0??????0??????0???1??????0.
  return !((!x)|(x>>31));//x>>31,?????????????????????ffffffff,???????????????0???!x,0??????1??????0??????0.
                         //??????0??????1???????????????ffffffff???????????????0.?????????????????????1??????????????????0
}//x<=0??????0 x>0??????1
/* 
 * isLessOrEqual - if x <= y  then return 1, else return 0 
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y) {
  // int tempx=x>>31;
  // int tempy=y>>31;
  // int a=0x0;
  // a=(~a+(~1+1));
  // return ((~tempy|tempx)&1)|(!((!!(x+(~y+1)))&(~(a|((x+(~y+1))>>31)))));
  // return (((~tempy|tempx)&1)&(tempy^tempx))|(!!((!(x+(~y+1)))|((x+(~y+1))>>31))); 
  //y???????????????31????????????x????????????????????????????????????1???xy????????????????????????1????????????0???
  // ????????????isPositive???????????????????????????x-y(x+(~y+1))??????0????????????
  //?????????????????????
  int isSameSign=(x^y)>>31;//?????????????????????x???y??????????????????????????????????????????31????????????x???y????????????
                           //????????????isSameSign??????0x00000000,???????????????0xffffffff
  return !((((y+(~x)+1)&(~isSameSign))|(y&isSameSign))>>31);//??????y x??????,(y&isSameSign)?????????0.
                                                            //((y+(~x)+1)&(~isSameSign))??????y-x
                                                            //??????????????????!((y-x)>>31) 
                                                            //y-x>=0??????1,<=0??????0
                                                            //????????????,(y&isSameSign)?????????y.
                                                            //((y+(~x)+1)&(~isSameSign))??????0
                                                            //????????????!(y>>31)
                                                            //y???????????????0???????????????x???????????????1
                                                            //y???????????????x????????????0
}                                                     
/*
 * ilog2 - return floor(log base 2 of x), where x > 0
 *   Example: ilog2(16) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 90
 *   Rating: 4
 */
int ilog2(int x) {
  int isHave0, isHave1, isHave2, isHave3, isHave4;
  int temp0, temp1, temp2, temp3, temp4;
  isHave0=!!(x>>16); //??????16????????????16????????????1????????????1?????????0
  temp0=isHave0<<4;
  x>>=temp0;//????????????16????????????1????????????16?????????
  isHave1=!!(x>>8); //??????8????????????16?????????8????????????1????????????1?????????0
  temp1=isHave1<<3;
  x=x>>temp1;//????????????8????????????1????????????16?????????8?????????
  isHave2=!!(x>>4); //??????4????????????8?????????4????????????1????????????1?????????0
  temp2=isHave2<<2;
  x=x>>temp2;//????????????4????????????1????????????8?????????4?????????
  isHave3=!!(x>>2); //??????2????????????4?????????2????????????1????????????1?????????0
  temp3=isHave3<<1;
  x=x>>temp3;//????????????2????????????1????????????4?????????2?????????
  isHave4=!!(x>>1); //??????2????????????2?????????1????????????1????????????1?????????0
  temp4=isHave4;//?????????1?????????0???????????????
  return temp0+temp1+temp2+temp3+temp4;
}//???log(x),??????2????????????(2 4 8 16)????????????,?????????1????????????????????????
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
 return ((uf&0x7fffffff)>0x7f800000)?uf:(uf^0x80000000);//(uf&0x7fffffff)??????????????????uf??????????????????1???0
                                                        //??????0???????????????????????????uf????????????????????????
                                                        //?????????????????????????????????0x7f800000???
                                                        //???????????????????????????0?????????????????????0x7f800000
                                                        //??????????????????8???????????????1??????????????????????????????
                                                        //????????????????????????????????????????????????
                                                        //??????????????????ff,???????????????
                                                        //??????0x80000000??????????????????
                                                        //????????????????????????????????????
}//???????????????????????????
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x){
  unsigned abs_x, exponent;
  int sign, lo, shift, detect, t1, carry, temp;
  temp=0x80<<24;
  if(x){
    sign=x>>31;
    abs_x=(x+sign)^sign;
    lo =31;
    while (lo) {
      if (abs_x&(1<<lo)) {
        break;
      }
      lo=lo-1;
    }
    if (lo>23) {
      shift=lo-23;
      t1=shift-1;
      detect=abs_x>>t1;
      carry=0;
      if (((detect)&((detect >> 1)|(t1 && (abs_x<<(33-shift)))))&1) {
        carry=1;
      }
      abs_x=abs_x>>shift;
      abs_x+=carry;
    } else {
      abs_x=abs_x<<(23-lo);
    }
    exponent=lo+126;
    return (sign&temp)|((exponent<<23)+abs_x);
  }
  return 0;
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
	if((uf&0x7f800000)==0){
    return ((uf&0x007fffff)<<1)|(uf&0x80000000);
  }//?????????????????????????????????0???????????????????????????
   //???????????????????????????uf???0x80000000????????????????????????????????????????????????
	if((uf&0x7f800000)!=0x7f800000){
    return uf+0x800000;
  }//??????????????????????????????+1(0x800000???????????????????????????1???????????????0????????????????????????)
  return uf;//???????????????????????????
}//??????float????????????
