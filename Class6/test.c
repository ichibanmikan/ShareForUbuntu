void fun2(int *a,int n)
{
    int block,ii,jj,imax,jmax,i,j;
	block = 10;
	for(i=0;i<n;i+=block){
		imax = i+block;
		for(j=0;j<n;j+=block){
			jmax = j+block;
			for(ii = i;ii<imax;ii++)
			for(jj = j;jj<jmax;jj++){
				G[jj*n+ii] = G[jj*n+ii] || G[ii*n+jj];
			}
		}
	}
	for(;i<n;i++)
	for(;j<n;j++){
		G[j*n+i] = G[j*n+i] || G[i*n+j];
	}
}