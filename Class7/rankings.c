void rankings(int number, int* ranking, int* total_score, int** x){
    int i, j;
    for(i=0; i<6; i++){
        ranking[i]=1;
        total_score[i]=0;
    }
    for(i=0; i<5; i++){
        for(j=0; j<5; j++){
            if((*((int*)x+i*5+j))>(*((int*)x+number*5+j))){
                ranking[j]++;
            }
            total_score[i]=total_score[i]+*((int*)x+i*5+j);
        }
    }
    for(i=0; i<5; i++){
        if(total_score[i]>total_score[number]){
            ranking[5]+9+;
        }
    }
}