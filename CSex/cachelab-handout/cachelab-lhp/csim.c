#include "cachelab.h" 
#include <stdio.h>
#include <stdlib.h>
#include <string.h> //strcpy()适用
#include <unistd.h> //getopt()适用
#include <getopt.h>
#include <stdlib.h>
/*step2用：定义高速缓存cache结构体 */
typedef struct {
	int valid; //有效位
	int tag; //标识位
	int LruNumber; //LRU算法计数
} Line; //Line行格式

typedef struct {
	Line *lines; //指向一组中的行
} Set; //Set组格式

typedef struct {
	int SetNumber; //组数
	int LineNumber; //行数
	Set *sets; //指向一Cache中的组
} Sim_Cache; //模拟的Cache格式

/*Step3用: LRU变量*/
#define MAX_NUM 2147483647

/*Step4用 统计数量 */
int misses; //未命中
int hits; //命中
int evictions; //驱逐

/*
* Prototypes for Csim helper functions
* LHP,2019070101,HNU,CS,2021.05
*/

/*Step2 Functions----*/
/*打印help信息*/
void printHelpMenu() 
{
	printf("用法: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>\n");
	printf("参数:\n");
	printf("-h 打印帮助信息.\n");
	printf("-v 显示详细信息.\n");
	printf("-s <num> 索引位大小.\n");
	printf("-E <num> 缓存集行数.\n");
	printf("-b <num> 偏移位大小.\n");
	printf("-t <file> Trace文件.\n\n");
	printf("样例:\n");
	printf("linux> ./csim -s 4 -E 1 -b 4 -t traces/yi.trace\n");
	printf("linux> ./csim -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");
}

/*检查参数合法性*/
void checkOptarg(char *curOptarg) 
{
	if(curOptarg[0]=='-') 
	{
		printf("./csim :缺少需要的参数\n");
		printHelpMenu();
		exit(0);
	}
}

/*分析输入参数*/
int get_Opt(int argc,char **argv,int *s,int *E,int* b,char *tracefileName,int *isVerbose) 
{
	int c;
	while((c= getopt(argc,argv,"hvs:E:b:t:"))!=-1) 
	{
		switch(c) 
		{
			case 'v':
				*isVerbose=1;
				break;
			case 's':
				checkOptarg(optarg);
				*s =atoi(optarg);  //字符串转换为正数
				break;
			case 'E':
				checkOptarg(optarg);
				*E =atoi(optarg);
				break;
			case 'b':
				checkOptarg(optarg);
				*b =atoi(optarg);
				break;
			case 't':
				checkOptarg(optarg);
				strcpy(tracefileName,optarg);
				break;
			case 'h':
			default:
				printHelpMenu();
				exit(0);
		}
	}
	return 1;
}

/*初始化cache */
void init_SimCache(int s,int E,int b,Sim_Cache *cache) 
{
	if(s<0) 
	{
		printf("invald cache sets number!\n");
		exit(0);
	}
	cache->SetNumber=1<<s;
	cache->LineNumber=E; 
	cache->sets=(Set *)malloc(cache->SetNumber*sizeof(Set)) ;
	if(!cache->sets) 
	{
		printf("Set Memory error!\n");
		exit(0);
	}

	int i,j;
	for(i=0; i<cache->SetNumber; i++) 
	{
			cache->sets[i].lines=(Line *)malloc(E*sizeof(Line));
			if(!cache->sets[i].lines) {
			printf("Line Memeory error!\n");
			exit(0);
		}

		for(j=0; j<E; j++) 
		{
			cache->sets[i].lines[j].valid=0;
			cache->sets[i].lines[j].LruNumber=0;
		}
	}
	return;
}

/*释放函数*/
int free_SimCache(Sim_Cache *cache) 
{
	int i;
	for(i=0; i<cache->SetNumber; i++) 
	{
		free(cache->sets[i].lines);
		cache->sets[i].lines=NULL;
	}
	free(cache->sets);
	cache->sets=NULL;
	return 0; 
}

/*显示各组*/
int put_Sets(Sim_Cache *cache) 
{
	int i,j;
	for(i=0; i<cache->SetNumber; i++) 
	{
		for(j=0; j<cache->LineNumber; j++) 
		{
			printf("set %d: line %d: valid=%d, tag:%d LruNumber=%d\n",i,j,cache->sets[i].lines[j].valid,
				cache->sets[i].lines[j].tag,cache->sets[i].lines[j].LruNumber);
		}
	}
	return 0;
}
/*Step3 Functions----*/
/*更新LruNumber,hit的话为最大的MAX_NUM,其他行LRU均减1 */
void updateLruNumber(Sim_Cache *sim_cache,int setBits,int hitIndex) 
{
	sim_cache->sets[setBits].lines[hitIndex].LruNumber=MAX_NUM;
	int j;
	for(j=0; j<sim_cache->LineNumber; j++) 
	{
		if(j!=hitIndex)
		sim_cache->sets[setBits].lines[j].LruNumber--;
	}
}

/* 查找某组中当前最小的LruNumber行，作为牺牲行 */
int findMinLruNumber(Sim_Cache *sim_cache,int setBits) 
{
	int i,t;
	int minIndex=0;
	int minLru=MAX_NUM;
	for(i=0; i<sim_cache->LineNumber; i++) 
	{
		t=sim_cache->sets[setBits].lines[i].LruNumber;
		if(t<minLru) 
		{
			minIndex=i;
			minLru=t;
		}
	}
	return minIndex;
}

/*判断是否命中*/
int isMiss(Sim_Cache *sim_cache,int setBits,int tagBits) 
{
	int i;
	int isMiss=1;
	for(i=0; i<sim_cache->LineNumber; i++) 
	{
		if(sim_cache->sets[setBits].lines[i].valid==1 && sim_cache->sets[setBits].lines[i].tag ==tagBits) 
		{
			isMiss=0;
			updateLruNumber(sim_cache,setBits,i);
			break;
		}
	}
	return isMiss;
}

/*更新高速缓存数据*/
int updateCache(Sim_Cache *sim_cache,int setBits,int tagBits) 
{
	int i;
	int isfull=1;
	for(i=0; i<sim_cache->LineNumber; i++) 
	{
		if(sim_cache->sets[setBits].lines[i].valid==0) 
		{
			isfull=0;
			break;
		}
	}
	if(isfull==0) 
	{
		sim_cache->sets[setBits].lines[i].valid=1;
		sim_cache->sets[setBits].lines[i].tag=tagBits;
		updateLruNumber(sim_cache,setBits,i);
	} 
	else 
	{
		int evictionIndex=findMinLruNumber(sim_cache,setBits);
		sim_cache->sets[setBits].lines[evictionIndex].valid=1;
		sim_cache->sets[setBits].lines[evictionIndex].tag=tagBits;
		updateLruNumber(sim_cache,setBits,evictionIndex);
	}
	return isfull;
}

/*验证LRU运行相关函数*/
int runLru(Sim_Cache *sim_cache,int setBits,int tagBits) 
{
	if(isMiss(sim_cache,setBits,tagBits) )
		updateCache(sim_cache,setBits,tagBits);
	return 0;
}


/*获取地址中的组号*/
int getSet(int addr,int s,int b)
{
	addr=addr>>b;
	int mask = (1<<s)-1;
	return addr &mask;
} 
/*获取地址中的标识号*/
int getTag(int addr,int s,int b)
{
	int mask=s+b;
	return addr>>mask;
} 
/*trace文件 L操作（数据加载操作）*/
void loadData(Sim_Cache *sim_cache,int addr,int size,int setBits,int tagBits,int isVerbose)
{
	if(isMiss(sim_cache,setBits,tagBits)==1)
	{
		//没有命中
		misses++;
		if(isVerbose==1)
			printf(" miss");
		if(updateCache(sim_cache,setBits,tagBits)==1)
		{
			//该组需要牺牲行
			evictions++;
			if(isVerbose==1)printf(" eviction"); 
		} 
  	}
	else
	{
		hits++;
		if(isVerbose==1)printf(" hit");
	}
} 
/*trace文件 S操作（数据存储操作）*/ 
void storeData(Sim_Cache *sim_cache,int addr,int size,int setBits,int tagBits,int isVerbose)
{
	loadData(sim_cache,addr,size,setBits,tagBits,isVerbose);
}
/*trace文件 M操作（数据修改操作）*/
void modifyData(Sim_Cache *sim_cache,int addr,int size,int setBits,int tagBits,int isVerbose)
{
	loadData(sim_cache,addr,size,setBits,tagBits,isVerbose);
	storeData(sim_cache,addr,size,setBits,tagBits,isVerbose);
} 
/*
* main function for Csim, cachelab part A.
* ZHJ,C301,Yuelu,CS,2021Spr
*/
int main(int argc, char *argv[]) 
{
	int s,E,b,isVerbose=0;
	char tracefileName[100],opt[10]; //追踪文件
	int addr,size;
	misses=hits=evictions=0;
	Sim_Cache cache;
	get_Opt(argc,argv,&s,&E,&b,tracefileName,&isVerbose);
	init_SimCache(s,E,b,&cache);
	//put_Sets(&cache);
	FILE *tracefile=fopen(tracefileName,"r");
	/*step2用： 用户补充检验代码 */
	while(fscanf(tracefile,"%s %x,%d",opt,&addr,&size)!=EOF)
	{
		if(strcmp(opt,"1")==0)continue;
		int setBits=getSet(addr,s,b);
		int tagBits=getTag(addr,s,b);
		//printf("..............................\n");
		if(isVerbose==1)
			printf("set:%x  tag:%x - ",setBits,tagBits);
		if(isVerbose==1)printf("%s %x,%d",opt,addr,size);
		if(strcmp(opt,"S")==0)
		{
			storeData(&cache,addr,size,setBits,tagBits,isVerbose);
		}
		if(strcmp(opt,"M")==0)
		{
			modifyData(&cache,addr,size,setBits,tagBits,isVerbose);
		}
		if(strcmp(opt,"L")==0)
		{
			loadData(&cache,addr,size,setBits,tagBits,isVerbose);
		}
		if(isVerbose==1)
		{
			printf("\n");
		}
	}	
	/*step3用： 用户补充检验代码 */
	//put_Sets(&cache);

	/*step4用： 用户补充检验代码 */
	printSummary(hits,misses,evictions);
	free_SimCache(&cache);

	return 0;
}

