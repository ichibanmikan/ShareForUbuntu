/* 
 * myspin.c - A handy program for testing your tiny shell 
 * 
 * usage: myspin <n>
 * Sleeps for <n> seconds in 1-second chunks.
 *
 */
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char **argv) 
{
    int i, secs;
    //如果命令参数不为2（命令和时间），则退出并报错
    if (argc != 2) {
	fprintf(stderr, "Usage: %s <n>\n", argv[0]);
	exit(0);
    }//得到第二个参数时间
    secs = atoi(argv[1]);
    for (i=0; i < secs; i++)
	sleep(1);	//休眠secs秒
    exit(0);
}
