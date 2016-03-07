#include <memory.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/times.h>
#include <unistd.h>
#include <sys/time.h>
#include <sys/resource.h>

int N, N4;
char a[25480], b[25480], c[25480];
char string[100];

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
    struct tms start, end;

    struct rusage usage_start, usage_end;
    if (getrusage(RUSAGE_SELF, &usage_start) == -1) exit(0);

    if (times(&start) == (clock_t)-1) exit(0);

    N4 = N + 4;

    SET( a, 0 );
    SET( b, 0 );

    for( j = 2 * N4 + 1; j >= 3; j -= 2 )
    {
        SET( c, 1 );
        LONGDIV( c, j );

        SUBTRACT( a, c, a );
        DIVIDE( a, 25 );

        SUBTRACT( b, c, b );
        DIVIDE( b, 239 );
        DIVIDE( b, 239 );

        progress();
    }

    SET( c, 1 );

    SUBTRACT( a, c, a );
    DIVIDE( a, 5 );

    SUBTRACT( b, c, b );
    DIVIDE( b, 239 );

    MULTIPLY( a, 4 );
    SUBTRACT( a, a, b );
    MULTIPLY( a, 4 );

    progress();

    if (getrusage(RUSAGE_SELF, &usage_end) == -1) exit(0);

    if (times(&end) == (clock_t)-1) exit(0);
    fprintf(stderr, "\n Timing amb crida times: user %f segons, system: %f segons\n", (float)(end.tms_utime-start.tms_utime)/sysconf(_SC_CLK_TCK), (float)(end.tms_stime-start.tms_stime)/sysconf(_SC_CLK_TCK));
    
    float user_time_start = (usage_start.ru_utime.tv_sec + (float)(usage_start.ru_utime.tv_usec)/1e6);
    float user_time_end = (usage_end.ru_utime.tv_sec + (float)(usage_end.ru_utime.tv_usec)/1e6);
    float user_time = user_time_end - user_time_start;

    float system_time_start = (usage_start.ru_stime.tv_sec + (float)(usage_start.ru_stime.tv_usec)/1e6);
    float system_time_end = (usage_end.ru_stime.tv_sec + (float)(usage_end.ru_stime.tv_usec)/1e6);
    float system_time = system_time_end - system_time_start;
    fprintf(stderr, "\n Timing amb crida getrusage: user %f segons, system: %f segons\n", user_time, system_time);
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
    int j;

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

