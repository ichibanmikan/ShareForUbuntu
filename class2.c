int jisuan(int i)
{
	int b,s,g;
	b = i/100;
	s = (i-b*100)/10;
	g = i%10;
	return g*g*g+s*s*s+b*b*b;
}


int main()
{
	int a,b,i;
	i=152;
	while(i<155)
	{
		b = jisuan(i);
		if(i==b)
			a = b;
		i++;
	}
	return 0;
}
