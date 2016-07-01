#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_NOM 40
#define MAX_DIAS_MES 31
#define MAX_CATEGORIA 40
#define MAX_ADDRESS 100

#define BUFF_SIZE 1024

typedef struct
{
  long long int NID;              /* Número d'identificació: clau d'ordenació */
  char Nom[MAX_NOM];
  char Cognoms[MAX_NOM];
  int  horesMes[MAX_DIAS_MES];
  char Categoria[MAX_CATEGORIA];
  unsigned int ptrClauForaneaDepartament;
  unsigned int ptrClauCategoria;
#ifdef EXTES
  char Address[MAX_ADDRESS];
  char Nom_parella[MAX_NOM];
  char Cognoms_parella[MAX_NOM];
#endif
} Templeat;

typedef struct {
  long long int NID;
  unsigned int index;
} TOrdenar;

int compare(const void *p1, const void *p2)
{
    return ((TOrdenar*) p1)->NID - ((TOrdenar*) p2)->NID;
}

int main(int argc, char *argv[])
{
	Templeat *empleats;
	unsigned int N = 4000000, i;

  TOrdenar *empleatsOrd;

	if (argc > 1) N = atoi(argv[1]);


	empleats = (Templeat *) malloc(N*sizeof(Templeat));
	if (empleats == NULL) { fprintf(stderr, "Out of memory\n"); exit(0); }
	memset(empleats, 0, N*sizeof(Templeat));

  empleatsOrd = (TOrdenar *) malloc(N*sizeof(TOrdenar));
  if (empleatsOrd == NULL) { fprintf(stderr, "Out of memory\n"); exit(0); }

	/* Random generation */
	for (i=0; i<N; i++) {
		empleats[i].NID = rand();
		empleats[i].Nom[0] = 'A' + ((i>>3) + (i<<2)) & 0x15;
		empleats[i].Cognoms[0] = 'a' + ((i>>2) + (i<<3)) & 0x15;
		empleats[i].horesMes[i % MAX_DIAS_MES] = i;
		empleats[i].Categoria[i % MAX_CATEGORIA] = (i << 2) * i;
		empleats[i].ptrClauForaneaDepartament = i<<10 + i<<14 + i>>3;
		empleats[i].ptrClauCategoria = i<<24 + i<< 18 + i<<10 + i>>2;
#ifdef EXTES
      empleats[i].Address[0] = 'A' + ((i>>4) + (i<<2)) & 0x15;
      empleats[i].Nom_parella[0] = 'a' + ((i>>5) + (i<<2)) & 0x15;
  		empleats[i].Cognoms_parella[0] = 'A' + ((i>>5) + (i<<3)) & 0x15;
#endif
	}

  for (i = 0; i < N; ++i) {
    empleatsOrd[i].index = i;
    empleatsOrd[i].NID = empleats[i].NID;
  }

	qsort(empleatsOrd, N, sizeof(TOrdenar), compare);

  Templeat buff[BUFF_SIZE];

  /*for (i=0; i < N - BUFF_SIZE; i += BUFF_SIZE) {
    write(1, &empleats[i], sizeof(Templeat)*BUFF_SIZE);
	}

  for (;i < N; ++i) {
    write(1, &empleats[i], sizeof(Templeat));
  }*/
int j;
  for (i = 0; i < N - BUFF_SIZE; i += BUFF_SIZE) {
    for (j = 0; j < BUFF_SIZE; ++j) buff[j] = empleats[empleatsOrd[i+j].index];
    write(1, buff, sizeof(buff));
  }

  for (; i < N; ++i) {
    write(1, &empleats[empleatsOrd[i].index], sizeof(Templeat));
  }

	return 0;
}
