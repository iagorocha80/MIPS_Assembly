#include <stdio.h>
#include <stdlib.h>
int main(){
int vetor[5] = {-2, - 1, 0, 1, 2};
int b = 0, c = 10, d = 12;
b = c + vetor[1];
vetor[1] = vetor[1] + b;
while(vetor[1] < d)
    vetor[1] = vetor[1] + 1;
    
return 0;
}