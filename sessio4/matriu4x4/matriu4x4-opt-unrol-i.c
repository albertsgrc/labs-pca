#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#define N_ITER 10000000

#define k_iter(___i, _j, __k) {\
    C[___i][_j] = C[___i][_j] + A[___i][(__k)] * B[(__k)][_j];\
}\

#define j_iter(_i, __j) {\
  k_iter(_i, __j, 0)\
  k_iter(_i, __j, 1)\
  k_iter(_i, __j, 2)\
  k_iter(_i, __j, 3)\
}\

#define i_iter(__i) {\
  j_iter(__i, 0)\
  j_iter(__i, 1)\
  j_iter(__i, 2)\
  j_iter(__i, 3)\
}\

void __attribute__((always_inline)) inline multiplica(int A[4][4], int B[4][4], int C[4][4], unsigned int n_iter)
{
   int iter;

   for (iter=0; iter<n_iter; iter++) {
     i_iter(0)
     i_iter(1)
     i_iter(2)
     i_iter(3)
   }
}

void print_matriu(int C[][4])
{
   int i,j,k;

   for (i = 0; i < 4; i++)
   {
     for (j = 0; j < 4; j++)
     {
       printf("%d ", C[i][j]);
     }
     printf("\n");
   }
}

int main(int argc, char *argv[])
{
    int A[4][4], B[4][4], C[4][4] = {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
    unsigned int n_iter=N_ITER, i,j;

    for (i=0; i<4; i++) {
        for (j=0; j<4; j++) {
            A[i][j] = rand();
            B[i][j] = rand();
        }
    }

    if (argc > 1) {
	n_iter = atoi(argv[1]);
    }

    multiplica(A, B, C, n_iter);

    print_matriu(C);

    return 0;
}
