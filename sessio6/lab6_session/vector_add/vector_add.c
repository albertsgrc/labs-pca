#include <stdio.h>
#include <stdlib.h>
#include <emmintrin.h>

#define N 8192 /* Tindrem tot el vector a la cache */

#define ITER(__i) {\
    *(pc+__i) = INTR(*(pa+__i), *(pb+__i));\
}\

#if defined(INT)
#define TIPUS int
#define INTR(a, b) _mm_add_epi32(a,b)
#elif defined(SHORT)
#define TIPUS short
#define INTR(a, b) _mm_add_epi16(a,b)
#else
#define TIPUS char
#define INTR(a, b) _mm_add_epi8(a,b)
#endif

#ifndef VECTORIAL


void vector_add(TIPUS *A, TIPUS *B, TIPUS *C, int len, int N_iter)
{
    int i;
    int j;

    for (j=0; j<N_iter; j++)
        for (i=0;i<len;i++)
            C[i] = A[i] + B[i];
}
#else

#if  defined(INTRINSIC_ALIGNED)

void vector_add(TIPUS *A, TIPUS *B, TIPUS *C, int len, int N_iter)
{
    int i,j;

    for (j=0; j<N_iter; j++)
        for (i=0; i<len; i=i+(sizeof(__m128i)/sizeof(TIPUS))) {
            __m128i pa, pb, pc;

            pa = _mm_load_si128((__m128i*) &A[i]);
            pb = _mm_load_si128((__m128i*) &B[i]);
            pc = INTR(pa, pb);
            _mm_store_si128((__m128i*) &C[i],pc);
        }
}

#else
#ifndef INTRINSIC_UNALIGNED
// equivalent to the vector_add_ma_compiler.c
void vector_add(TIPUS *A, TIPUS *B, TIPUS *C, int len, int N_iter)
{
    int i;
    int j;

    for (j=0; j<N_iter; j++) {
        __m128i *pa = (__m128i*)&A[0], *pb= (__m128i*)&B[0], *pc= (__m128i*)&C[0];
        __m128i *paf = (__m128i*)&A[len - 6 < 0 ? 0 : len - 6];
        for (; pa<=paf; pa += 8, pb += 8, pc += 8) {
            ITER(0);
            ITER(1);
            ITER(2);
            ITER(3);
            ITER(4);
            ITER(5);
            ITER(6);
            ITER(7);
        }
        __m128i *paf2 = (__m128i*)&A[len-1];
        for (; pa <=paf2; ++pa, ++pb, ++pc) ITER(0);
    }
}
#else

void vector_add(TIPUS *A, TIPUS *B, TIPUS *C, int len, int N_iter)
{
    int i,j;

    for (j=0; j<N_iter; j++)
        for (i=0; i<len; i=i+(sizeof(__m128i)/sizeof(TIPUS))) {
            __m128i pa, pb, pc;

            pa = _mm_loadu_si128((__m128i*) &A[i]);
            pb = _mm_loadu_si128((__m128i*) &B[i]);
            pc = INTR(pa, pb);
            _mm_storeu_si128((__m128i*) &C[i],pc);
        }
}

#endif
#endif
#endif

int main (int argc, char *argv[])
{

  TIPUS *A, *B, *C; /* Vectores para malloc */

  int i;
  volatile int j;
  int n=N; /* Number of elements */
  int NIt=500000; /* Number of iterations*/

  if (argc>1) NIt = atoi(argv[1]);
  if (argc>2) n = atoi(argv[2]);
  if (n>N) { printf("Maxima longitud vector: %d\n",N); exit(-1); }

#ifdef VECTORIAL
  if ((posix_memalign((void**)&A, 16, n+1)!=0) || (posix_memalign((void**)&B, 16, n+1)!=0) || (posix_memalign((void**)&C, 16, n+1)!=0) )
  {
    printf("No memory.\n");
    exit(-1);
  }
#ifdef UNALIGNED
  A++; B++; C++;
#endif
#else
  A= (TIPUS *)malloc(sizeof(TIPUS)*(n+1));
  if (A==NULL) { printf("No memory.\n"); exit(-1);}
  B= (TIPUS *)malloc(sizeof(TIPUS)*(n+1));
  if (B==NULL) { printf("No memory.\n"); exit(-1);}
  C= (TIPUS *)malloc(sizeof(TIPUS)*(n+1));
  if (C==NULL) { printf("No memory.\n"); exit(-1);}
#endif

  n = n/sizeof(TIPUS);
  NIt = NIt*sizeof(TIPUS); /* Per igualar el nombre d'operacions add */

  /* Inicialització amb nombres "aleatoris" */
  for (i=0;i<n;i++) {
     A[i]=i^(i<<6)^i;
     B[i]=(i-5)^(i<<4)^(i+3);
  }

  vector_add (A,B,C,n,NIt);

  write(1, C, n*sizeof(TIPUS));

  return(0);
}
