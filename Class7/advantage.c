int advantage(int number, int** x){
    int score=0;
    int i;
    for(i=0; i<5; i++){
        if((*((int *)x+number*5+i))>score){
            score=(*((int *)x+number*5+i));
        }
    }
    return score;
}