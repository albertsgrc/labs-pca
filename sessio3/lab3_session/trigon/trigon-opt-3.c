#include <math.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

#define N 6000
#define PUNTS 1000

/** MEMOIZATION **/
// Stores in position i*2 the sinus computation that will be used in
// the inner's loop iteration i, and in position i*2 +1 the cosine
// computation that will be used in the inner's loop iteration i
double mem[PUNTS*2];

// I've added this buffer in order to reduce the number of write calls
double buffer[PUNTS*2];

int main(int argc, char *argv[])
{
    unsigned int i, r, j, n;
    double d, x, y;

    if (argc == 1) n = N; else n = atoi(argv[1]);

    // Compute the cosine and sine values for each iteration
    // Makes sense to memoize it because
    // 1. sin() and cos() computations are very expensive (as compared to array access)
    // 2. this computation would otherwise be repeated n times
    for (i=0, d=0; i<2*PUNTS;) {
        mem[i] = cos(d); ++i;
        mem[i] = sin(d); ++i;

        d += 2*M_PI/PUNTS;
    }

    srand(0);
    for (i=0; i<n; i++)
    {
        r = rand();
        // The buffer is filled during the inner loop
        for (j=0; j<PUNTS;++j)
        {
            // Use the memoized computation instead of recomputing sine and cosine
            memcpy(&buffer[2*j], &mem[2*j], 2*sizeof(double));
            buffer[2*j] *= r;
            buffer[2*j+1] *= r;
        }

        // And then written at the end of the loop
        write(1, buffer, sizeof(buffer));
    }
    return 0;
}
