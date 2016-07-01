#include <stdio.h>
#include <stdlib.h>
#include "emmintrin.h"

#define N 16000000

typedef struct s_pixel_rgb {
	unsigned char r;
	unsigned char g;
	unsigned char b;
} t_pixel_rgb;

#define ITER(__i) {\
	*(ini + __i) = _mm_adds_epu8(*(ini + __i), incr);\
}\

void increase_brightness (t_pixel_rgb *rgb, int len, unsigned char inc, int N_iter)
{
	int j;
	 __m128i incr = _mm_set_epi8(inc, inc, inc, inc, inc,inc, inc, inc, inc, inc, inc, inc, inc, inc, inc, inc);
     for (j=0; j<N_iter; j++) {
	 	__m128i* ini = (__m128i*) &rgb[0];
		unsigned char* fi = &((unsigned char*) &rgb[0])[len*3-1];
		__m128i* fi1 = (__m128i*) (fi - 15);
		__m128i* fi2 = fi1 - 15;
		for (; ini <= fi2; ini += 16) {
			ITER(0);
			ITER(1);
			ITER(2);
			ITER(3);
			ITER(4);
			ITER(5);
			ITER(6);
			ITER(7);
			ITER(8);
			ITER(9);
			ITER(10);
			ITER(11);
			ITER(12);
			ITER(13);
			ITER(14);
			ITER(15);
		}

		for (; ini <= fi1; ++ini)
			ITER(0);

		unsigned char* inic = (unsigned char*) ini;
		for (; inic <= fi; ++inic) {
			if ((*inic + inc) > 255) {
				*inic = 255;
			} else {
			 	*inic += inc;
			}
		}
	}
}

int main (int argc, char *argv[])
{

  t_pixel_rgb *A;
  int i;
  int n=N; // tamanyo vectores
  int NIt=50; // Num.iters
  unsigned char incr=1;

  if (argc>1) NIt = atoi(argv[1]);
  if (argc>2) n = atoi(argv[2]);
  if (argc>3) incr = (unsigned char) atoi(argv[3]);

  if (n>N) { printf("Maxima longitud vector: %d\n",N); exit(-1); }

  if (posix_memalign((void**)&A, 16, n*sizeof(t_pixel_rgb)) != 0) {
      fprintf(stderr, "No hay memoria.\n");
      exit(-1);
  }

   /* Inicialitzacio nombres "aleatoris" */
   for (i=0;i<n;i++) {
     A[i].r= i^(i-54) & 0x2f;
     A[i].g= (i+89)^(i-200) & 0x2f;
     A[i].b= (i+70)^(i+325) &0x2f;
   }

   increase_brightness (A, n, incr, NIt);

   write(1, A, n*sizeof(t_pixel_rgb));

   return(0);
}
