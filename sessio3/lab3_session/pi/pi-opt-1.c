#include <memory.h>
#include <stdio.h>
#include <stdlib.h>

int N, N4;

// Only memoizing quotient
char memdiv5[10*5];
char memdiv25[10*25];
char memdiv239[10*239];

char a[25480], b[25480], c[25480];
char string[100];

// The following holds for DIVIDEN
/*
    1: 0 <= r <= N-1 (el residu d'una divisio qualsevol es un natural menor que el el divisor, en aquest cas N)
    2: 0 <= x[k] <= 9 (cada element de x es un digit de PI, de 0 a 9)
    3: 0 <= u <= (N-1)*10 + 9 = 10N - 10 + 9 = 10N - 1 usant la formula u = r*10 + x[k] i com a consequaencia logica de 1 i 2)
*/

inline void memoize_div_n(char arr[], int n)
{
    uint j;
    for (j = 0; j <10*n; ++j)
        arr[j] = j/n;
}

void DIVIDE5( char *x )                           
{                                                
    int j, k;
    unsigned q, r, u;
    long v;

                                      
    for( k = 0; k <= N4; k++ )                  
    {                                            
        u = r * 10 + x[k]; // Dividend                      
        q = memdiv5[u]; // Quocient                              
        r = u - q * 5; // Residu                           
        x[k] = q;                                
    }                                           
}

void DIVIDE25( char *x )                           
{                                                
    int j, k;
    unsigned q, r, u;
    long v;

    r = 0;                                       
    for( k = 0; k <= N4; k++ )                  
    {                                            
        u = r * 10 + x[k]; // Dividend                      
        q = memdiv25[u]; // Quocient                              
        r = u - q * 25; // Residu                           
        x[k] = q;                                
    }                                           
}

void DIVIDE239( char *x )                           
{                                                
    int j, k;
    unsigned q, r, u;
    long v;

    r = 0;                                       
    for( k = 0; k <= N4; k++ )                  
    {                                            
        u = r * 10 + x[k]; // Dividend                      
        q = memdiv239[u]; // Quocient                              
        r = u - q * 239; // Residu                           
        x[k] = q;                                
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
        u = r * 10 + x[k]; // Dividend                      
        q = u / n; // Quocient                              
        r = u - q * n; // Residu                           
        x[k] = q;                                
    }                                           
}

void LONGDIV( char *x, int n )                          
{                                                
    int j, k;
    unsigned q, r, u;
    long v;

    if( n < 6553 )                               
    {                                            
        r = 0;                                   
        for( k = 0; k <= N4; k++ )               
        {                                        
            u = r * 10 + x[k];                   
            q = u / n;                           
            r = u - q * n;                       
            x[k] = q;                            
        }                                       
    }                                            
    else                                         
    {                                            
        r = 0;                                   
        for( k = 0; k <= N4; k++ )              
        {                                       
            if( r < 6553 )                      
            {                                   
                u = r * 10 + x[k];              
                q = u / n;                      
                r = u - q * n;                  
            }                                   
            else                                
            {                                   
                v = (long) r * 10 + x[k];       
                q = v / n;                      
                r = v - q * n;                  
            }                                   
            x[k] = q;                           
        }                                       
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
        if( (x[k] = y[k] - z[k]) < 0 )           
        {                                        
            x[k] += 10;                          
            z[k-1]++;                            
        }                                        
    }                                            
}


void calculate( void );
void progress( void );
void epilog( void );


int main( int argc, char *argv[] )
{
    N = 10000;
    return 0;
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

    memoize_div_n(memdiv5, 5);
    memoize_div_n(memdiv25, 25);
    memoize_div_n(memdiv239, 239);

    SET( a, 0 );
    SET( b, 0 );

    for( j = 2 * N4 + 1; j >= 3; j -= 2 )
    {
        SET( c, 1 );
        LONGDIV( c, j );

        SUBTRACT( a, c, a );
        DIVIDE25( a );

        SUBTRACT( b, c, b );
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

