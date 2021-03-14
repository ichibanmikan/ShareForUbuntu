

int f_0(int x,int y)
{
	int s;
	s=x*x+y*y;
	return s;
}

int f_1(int x,int y)
{
	int a,b,c;
	a=1;
	b=2*f_0(x,y);
	c=2*f_0(x+a,y+b);
	return c;
}
int main()
{
	int i=3;
	int j=4;
	int k=0;
	k=f_1(i,j);
	return 0;
}
