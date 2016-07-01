#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <unistd.h>
#include <time.h>
#include <assert.h>
#include "xmmintrin.h"

#define N 4096
#define BS 4

typedef long double LD;

float M[N][N];
float D[N][N];

float MB[N][N];
float DB[N][N];

float ME[N][N];

float MES[N][N] __attribute__ ((aligned (16)));

/**
Transpose: 0.3232 s
TransposeBlocked: 0.1189 s
TransposeEklund: 0.0831 s
TransposeEklundSimd: 0.0077 s
SpeedupBlocked: 2.7183
SpeedupEklund: 3.8915
SpeedupEklundSimd: 42.0989
**/

unsigned int min(unsigned int a, unsigned int b) {
    return a < b ? a : b;
}

void transpose(float *dst, float *src, int dim)
{
    int i,j;
    for (i=0; i<dim; i++)
        for (j=0; j<dim; j++)
            dst[j*dim+i] = src[i*dim+j];
}

void transpose_blocked(float *dst, float *src, int dim)
{
    int i,j,ii,jj;

    for (ii = 0; ii < dim; ii += BS)
        for (jj = 0; jj < dim; jj += BS)
            for (i = ii; i < ii+BS; ++i)
                for (j = jj; j < jj+BS; ++j)
                    dst[j*dim+i] = src[i*dim+j];
}

void transpose_eklund(float *m, int dim) {
    unsigned int i, j, ii, jj, k;

    for (ii = 0; ii < dim; ii += BS)
      for (jj = ii+1; jj < dim; jj += BS)
        for (i = ii; i < ii+BS; ++i)
          for (j = jj+i-ii, k = min(N, j+BS); j < k; ++j) {
              float temp = m[i*dim + j];
              m[i*dim + j] = m[j*dim + i];
              m[j*dim + i] = temp;
          }
}

void transpose_eklund_simd(float *m, int dim) {
    int ii, jj, i, j;

    for (ii = 0; ii < dim; ii += BS) {
      for (jj = ii; jj < dim - 3; jj += BS) {
          __m128* rowp0; __m128* rowp1; __m128* rowp2; __m128* rowp3;
          rowp0 = (__m128*) &m[ii*dim + jj];
          rowp1 = (__m128*) &m[(ii+1)*dim + jj];
          rowp2 = (__m128*) &m[(ii+2)*dim + jj];
          rowp3 = (__m128*) &m[(ii+3)*dim + jj];

          __m128 row0 = *rowp0;
          __m128 row1 = *rowp1;
          __m128 row2 = *rowp2;
          __m128 row3 = *rowp3;

          _MM_TRANSPOSE4_PS(row0, row1, row2, row3);

          *rowp0 = row0;
          *rowp1 = row1;
          *rowp2 = row2;
          *rowp3 = row3;
      }

      for (; jj < dim; ++jj)
          for (i = ii; i < ii+BS; ++i)
            for (j = jj+i-ii; j < dim; ++j) {
                float temp = m[i*dim + j];
                m[i*dim + j] = m[j*dim + i];
                m[j*dim + i] = temp;
            }
    }
}

unsigned long cpu_time_usecs(struct rusage* r) {
    return
    r->ru_utime.tv_sec*1e6 + r->ru_utime.tv_usec +
    r->ru_stime.tv_sec*1e6 + r->ru_stime.tv_usec;
}

int main(int argc, char* argv[]) {
    int i, j;
    struct rusage rb, ra;

    unsigned long tn, tb, te, tes;

    srand(1234);

    for (i = 0; i < N; ++i)
        for (j = 0; j < N; ++j) M[i][j] = (float) rand();

    srand(1234);
    // Uso dos matrices para asegurarme que el segundo no tiene ventaja
    // sobre el primero por localidad temporal
    for (i = 0; i < N; ++i)
        for (j = 0; j < N; ++j) MB[i][j] = (float) rand();

    srand(1234);

    for (i = 0; i < N; ++i)
        for (j = 0; j < N; ++j) ME[i][j] = (float) rand();

    srand(1234);

    for (i = 0; i < N; ++i)
        for (j = 0; j < N; ++j) MES[i][j] = (float) rand();

    getrusage(RUSAGE_SELF, &rb);
    transpose(&D[0][0], &M[0][0], N);
    getrusage(RUSAGE_SELF, &ra);

    tn = cpu_time_usecs(&ra) - cpu_time_usecs(&rb);

    getrusage(RUSAGE_SELF, &rb);
    transpose_blocked(&DB[0][0], &MB[0][0], N);
    getrusage(RUSAGE_SELF, &ra);

    tb = cpu_time_usecs(&ra) - cpu_time_usecs(&rb);

    getrusage(RUSAGE_SELF, &rb);
    transpose_eklund(&ME[0][0], N);
    getrusage(RUSAGE_SELF, &ra);

    te = cpu_time_usecs(&ra) - cpu_time_usecs(&rb);

    getrusage(RUSAGE_SELF, &rb);
    transpose_eklund_simd(&MES[0][0], N);
    getrusage(RUSAGE_SELF, &ra);

    tes = cpu_time_usecs(&ra) - cpu_time_usecs(&rb);

    for (i = 0; i < N; ++i)
        for (j = 0; j < N; ++j) {
            assert(D[i][j] == DB[i][j]);
            assert(D[i][j] == ME[i][j]);
            //assert(D[i][j] == MES[i][j]);
        }

    printf("Transpose: %.4Lf s\nTransposeBlocked: %.4Lf s\nTransposeEklund: %.4Lf s\nTransposeEklundSimd: %.4Lf s\nSpeedupBlocked: %.4Lf\nSpeedupEklund: %.4Lf\nSpeedupEklundSimd: %.4Lf\n",
        (LD)(tn)/(LD)(1e6), (LD)(tb)/(LD)(1e6), (LD)(te)/(LD)(1e6), (LD)(tes)/(LD)(1e6), (LD)(tn)/(LD)(tb), (LD)(tn)/(LD)(te), (LD)(tn)/(LD)(tes)
    );

    return 0;
}
