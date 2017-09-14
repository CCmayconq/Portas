#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>

int SIM;
int S, N, A;
FILE *INS;
FILE *INN;
FILE *INA;
FILE *OUT;

int main (){
  INS = fopen("STr.txt","r");
  INN = fopen("NTr.txt","r");
  INA = fopen("ATr.txt","r");
  if (INS == NULL || INA == NULL || INN == NULL){
    printf("Erro na abertura do arquivo de leitura\n");
    return 1;
  }
  S = 0;
  N = 0;
  A = 0;
  while (!feof(INS))
  {
    fscanf (INS, "%i\n", &SIM);
    S += SIM;
  }
  while (!feof(INN))
  {
    fscanf (INN, "%i\n", &SIM);
    N += SIM;
  }
  while (!feof(INA))
  {
    fscanf (INA, "%i\n", &SIM);
    A += SIM;
  }
  OUT = fopen("Log.txt","a+");
  fprintf (OUT, "%d\t%d\t%d\n", S, N, A);
  return 0;
}
