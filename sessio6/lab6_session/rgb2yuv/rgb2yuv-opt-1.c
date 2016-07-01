#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include "xmmintrin.h"

#define N 4000000
/* #define DEBUG 0 */

#define IT(__i) {\
	yuv->y[__i] = 0.299 * rgb->r[__i] + 0.587 * rgb->g[__i] + 0.114 * rgb->b[__i];\
	yuv->u[__i] = -0.147 * rgb->r[__i] + 0.289 * rgb->g[__i] + 0.436 * rgb->b[__i];\
	yuv->v[__i] = 0.615 * rgb->r[__i] - 0.515 * rgb->g[__i] - 0.100 * rgb->b[__i];\
}\

typedef struct s_pixel_rgb {
	float* r;
	float* g;
	float* b;
} t_pixel_rgb;

typedef struct s_pixel_yuv {
	float* y;
	float* u;
	float* v;
} t_pixel_yuv;

void rgb_to_yuv(t_pixel_rgb *rgb, t_pixel_yuv *yuv, int len, int N_iter)
{
	int i,j;

     for (j=0; j<N_iter; j++) {
		for (i=0; i<len - 7; i += 8) {
			__m128 r = *(__m128*)&(rgb->r[i]);
			__m128 g = *(__m128*)&(rgb->g[i]);
			__m128 b = *(__m128*)&(rgb->b[i]);

			__m128 ryf = _mm_set_ps1(0.299);
			__m128 gyf = _mm_set_ps1(0.587);
		 	__m128 byf = _mm_set_ps1(0.114);

			__m128* y = (__m128*)&(yuv->y[i]);

			*y = _mm_add_ps(_mm_mul_ps(ryf, r), _mm_add_ps(_mm_mul_ps(gyf, g), _mm_mul_ps(byf, b)));

			__m128 ruf = _mm_set_ps1(-0.147);
			__m128 guf = _mm_set_ps1(0.289);
		 	__m128 buf = _mm_set_ps1(0.436);

			__m128* u = (__m128*)&(yuv->u[i]);

			*u = _mm_add_ps(_mm_mul_ps(ruf, r), _mm_add_ps(_mm_mul_ps(guf, g), _mm_mul_ps(buf, b)));

			__m128 rvf = _mm_set_ps1(0.615);
			__m128 gvf = _mm_set_ps1(-0.515);
		 	__m128 bvf = _mm_set_ps1(-0.100);

			__m128* v = (__m128*)&(yuv->v[i]);

			*v = _mm_add_ps(_mm_mul_ps(rvf, r), _mm_add_ps(_mm_mul_ps(gvf, g), _mm_mul_ps(bvf, b)));
		}

		for (; i < len; ++i) IT(i);
	}
}


int main (int argc, char *argv[])
{
  t_pixel_rgb rgb; t_pixel_yuv yuv; // Vectores para malloc

  int i;
  int n=N; // tamanyo vectores
  int NIt=50; // Num->iters

  if (argc>1) NIt = atoi(argv[1]);
  if (argc>2) n = atoi(argv[2]);

  if (n>N) { printf("Maxima longitud vector: %d\n",N); exit(-1); }

  if (posix_memalign((void**)&rgb, 16, n*sizeof(t_pixel_rgb)) !=0) {
      fprintf(stderr, "No memory.\n");
      exit(-1);
  }
  if (posix_memalign((void**)&yuv, 16, n*sizeof(t_pixel_yuv)) !=0) {
      fprintf(stderr, "No memory.\n");
      exit(-1);
  }

  for (i=0;i<n;i++) {
     rgb.r[i]=(float) ((i<<26) ^ ((i + 340) << 22) ^ i ^ 0xf215fabc);
     rgb.g[i]=(float) (((i+450)<<27) ^ ((i + 567) <<20) ^ i ^ 0xb152e8ca);
     rgb.b[i]=(float) (((i+7823454) << 25) ^0xbad51cde);
  }

  rgb_to_yuv(&rgb, &yuv, n, NIt);

  write(1, yuv, n*sizeof(t_pixel_yuv));

  return(0);
}
