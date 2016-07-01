#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <unistd.h>
#include <time.h>
#include <assert.h>

#define N 4096
const unsigned int BS_D = 8;

typedef long double LD;

int G[N][N];
int GM[N][N];

int GR[N][N];
int GMB[N][N];

unsigned int BS;

#define TIME_AND_TEST(_f, _m, _t, _test) {                                        \
  getrusage(RUSAGE_SELF, &rb);                                                    \
  _f(&_m[0][0], N);                                                               \
  getrusage(RUSAGE_SELF, &ra);                                                    \
                                                                                  \
  _t = cpu_time_usecs(&ra) - cpu_time_usecs(&rb);                                 \
                                                                                  \
  if (_test) {                                                                    \
    int __i, __j, inc = 0;                                                        \
    for (__i = 0; __i < N && !inc; ++__i)                                         \
      for (__j = 0; __j < N && !inc; ++__j)                                       \
        if (_m[__i][__j] != G[__i][__j]) {                                        \
          printf("Method "  #_f " is not correct!\n");                            \
          inc = 1;                                                                \
        }                                                                         \
  }                                                                               \
}                                                                                 \

inline int min(int a, int b) { return a < b ? a : b; }

void col_convert(int *G, int dim) {
  int i,j;

  for (i=0; i<dim;i++)
    for (j=0;j<dim;j++)
      G[j*dim+i] = G[j*dim+i] || G[i*dim+j];
}

void col_convert_marc(int* G, int dim) {
  int i, j, dir1, dir2;

  for (i = 0; i < dim; i++)
    for (j = i + 1; j < dim; j++) {
      dir1 = i*dim + j;
      dir2 = j*dim + i;

      G[ dir1 ] = G[ dir1 ] || G[ dir2 ];
      G[ dir2 ] = G[ dir1 ];
    }
}

void col_convert_marc_blocked(int* G, int dim) {
  int ii, jj, i, j, k, dir1, dir2;

  for (ii = 0; ii < dim; ii += BS)
    for (jj = ii+1; jj < dim; jj += BS)
      for (i = ii; i < ii+BS; ++i)
        for (j = jj+i-ii, k = min(N, j+BS); j < k; ++j) {
          dir1 = i*dim + j;
          dir2 = j*dim + i;

          G[ dir1 ] = G[ dir1 ] || G[ dir2 ];
          G[ dir2 ] = G[ dir1 ];
        }
}

void col_convert_raul(int *G, int dim) {
	int i,j, ii, jj;
	for (ii = 0; ii < dim; ii += BS)
		for (jj = 0; jj < dim; jj += BS)
			for (i = ii; i < ii + BS; i++)
				for (j = jj; j < jj + BS; j++)
					G[j*dim + i] = G[j*dim + i] || G[i*dim + j];
}

void init_matrix(int M[N][N]) {
  int i, j;
  for (i = 0; i < N; ++i)
    for (j = 0; j < N; ++j) M[i][j] = rand()%2;
}

unsigned long cpu_time_usecs(struct rusage* r) {
    return
    r->ru_utime.tv_sec*1e6 + r->ru_utime.tv_usec +
    r->ru_stime.tv_sec*1e6 + r->ru_stime.tv_usec;
}

int main(int argc, char* argv[]) {
    struct rusage rb, ra;

    unsigned long tn, tm, tmb, tr;

    BS = argc > 1 ? atoi(argv[1]) : BS_D;

    srand(1234); init_matrix(G);
    srand(1234); init_matrix(GM);
    srand(1234); init_matrix(GMB);

    TIME_AND_TEST(col_convert, G, tn, 0);
    TIME_AND_TEST(col_convert_marc, GM, tm, 1);
    TIME_AND_TEST(col_convert_marc_blocked, GMB, tmb, 1);
    TIME_AND_TEST(col_convert_raul, GR, tr, 1);

    printf("ColConvert: %.4Lf s\nColConvertMarc: %.4Lf s\nColConvertMarcBlocked: %.4Lf s\nColConvertRaul: %.4Lf s\nSpeedupMarc: %.4Lf\nSpeedupMarcBlocked: %.4Lf\nSpeedupRaul: %.4Lf\n",
        (LD)(tn)/(LD)(1e6), (LD)(tm)/(LD)(1e6), (LD)(tmb)/(LD)(1e6), (LD)(tr)/(LD)(1e6), (LD)(tn)/(LD)(tm), (LD)(tn)/(LD)(tmb),(LD)(tn)/(LD)(tr)
    );

    return 0;
}
