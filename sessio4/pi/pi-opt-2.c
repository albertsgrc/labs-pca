#include <memory.h>
#include <stdio.h>
#include <stdlib.h>

int N, N4;

// Only memoizing quotient
unsigned memdiv5[10*5][2];
unsigned memdiv25[10*25][2];
unsigned memdiv239[10*239][2];

char a[25480], b[25480], c[25480];
char string[100];

// The following holds for DIVIDEN
/*
    1: 0 <= r <= N-1 (el residu d'una divisio qualsevol es un natural menor que el el divisor, en aquest cas N)
    2: 0 <= x[k] <= 9 (cada element de x es un digit de PI, de 0 a 9)
    3: 0 <= u <= (N-1)*10 + 9 = 10N - 10 + 9 = 10N - 1 usant la formula u = r*10 + x[k] i com a consequaencia logica de 1 i 2)
*/


void DIVIDE5( char *x )
{
    uint k;
    unsigned q, r, u;

    r = 0;
    for( k = 0; k <= N4; k++ )
    {
        u = r + x[k]; // Dividend
        x[k] = memdiv5[u][0]; // Quocient
        r = memdiv5[u][1]; // Residu
    }
}

void DIVIDE25( char *x )
{
    uint k;
    unsigned q, r, u;

    r = 0;
    for( k = 0; k <= N4; k++ )
    {
        u = r + x[k]; // Dividend
        x[k] = memdiv25[u][0]; // Quocient
        r = memdiv25[u][1]; // Residu
    }
}

void DIVIDE239( char *x )
{
    uint k;
    unsigned q, r, u;

    r = 0;
    for( k = 0; k <= N4; k++ )
    {
        u = r + x[k]; // Dividend
        x[k] = memdiv239[u][0]; // Quocient
        r = memdiv239[u][1]; // Residu
    }
}


void MULTIPLY( char *x, int n )
{
    int j, k;
    unsigned q, r, u;
    long v;
    r = 0;
    for( k = N4; k >= 0; k-- )
    {
        q = n * x[k] + r;
        r = q / 10;
        x[k] = q - r * 10;
    }
}

void SET( char *x, int n )
{
    memset( x, 0, N4 + 1 );
    x[0] = n;
}


void SUBTRACT( char *x, char *y, char *z )
{
    int j, k;
    unsigned q, r, u;
    long v;
    for( k = N4; k >= 0; k-- )
    {
        x[k] = y[k] - z[k];
        unsigned char mask = -(x[k] < 0);
        x[k] = x[k] + (10 & mask);
        z[k-1] -= mask;
    }
}

void SUBTRACT_2( char * x, char * z, char* x2, char* z2, char * y )
{
    int j, k;
    unsigned q, r, u;
    long v;
    for( k = N4; k >= 0; k-- )
    {
        x[k] = y[k] - z[k];
        x2[k] = y[k] - z2[k];
        unsigned char mask = -(x[k] < 0);
        unsigned char mask2 = -(x2[k] < 0);
        x[k] += 10 & mask;
        x2[k] += 10 & mask2;
        z[k-1] -= mask;
        z2[k-1] -= mask2;
    }
}

void DIVIDE( char *x, int n )
{
    int j, k;
    unsigned q, r, u;
    long v;

    r = 0;
    for( k = 0; k <= N4; k++ )
    {
        u = r * 10 + x[k];
        q = u / n;
        r = u - q * n;
        x[k] = q;
    }
}


void calculate( void );
void progress( void );
void epilog( void );


int main( int argc, char *argv[] )
{
    N = 10000;

    if( argc > 1 )
        N = atoi(argv[1]);

    setbuf(stdout, NULL);

    calculate();

    epilog();

    return 0;
}

void calculate( void )
{
    int j;

    N4 = N + 4;

    for (j = 0; j < 10*5; ++j) {
        memdiv5[j][0] = j/5;
        memdiv5[j][1] = 10*(j - memdiv5[j][0]*5);
    }

    for (j = 0; j < 10*25; ++j) {
        memdiv25[j][0] = j/25;
        memdiv25[j][1] = 10*(j - memdiv25[j][0]*25);
    }

    for (j = 0; j < 10*239; ++j) {
        memdiv239[j][0] = j/239;
        memdiv239[j][1] = 10*(j - memdiv239[j][0]*239);
    }

    SET( a, 0 );
    SET( b, 0 );

    for( j = 2 * N4 + 1; j >= 3; j -= 2 )
    {
        SET( c, 1 );
        DIVIDE( c, j );

        SUBTRACT_2( a, a, b, b, c );

        DIVIDE25( a );
        DIVIDE239( b );
        DIVIDE239( b );

        progress();
    }

    SET( c, 1 );

    SUBTRACT( a, c, a );
    DIVIDE5( a );

    SUBTRACT( b, c, b );
    DIVIDE239( b );

    MULTIPLY( a, 4 );
    SUBTRACT( a, a, b );
    MULTIPLY( a, 4 );

    progress();
}

/*

 N = 10000
 A = 0
 B = 0
 J = 2 * (N + 4) + 1
 FOR J = J TO 3 STEP -2
     A = (1 / J - A) / 5 ^ 2
     B = (1 / J - B) / 239 ^ 2
 NEXT J
 A = (1 - A) / 5
 B = (1 - B) / 239
 PI = (A * 4 - B) * 4

*/

void progress( void )
{
    printf(".");
}

void epilog( void )
{
    uint j; // OPT: Changed from int to uint, will always be positive

    {
        fprintf( stdout, " \n3.");
        for( j = 1; j <= N; j++ )
        {
            fprintf( stdout, "%d", a[j]);
            if( j % 5  == 0 )
                if( j % 50 == 0 )
                    if( j % 250  == 0 )
                        fprintf( stdout, "    <%d>\n\n   ", j );
                    else
                        fprintf( stdout, "\n   " );
                else
                    fprintf( stdout, " " );
        }
    }
}
