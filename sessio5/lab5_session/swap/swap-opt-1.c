#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#define BUFFER_SIZE 1024

void panic(char *miss)
{
        if (errno != 0) perror(miss);
        else fprintf(stderr, "%s\n", miss);

        exit(1);
}

int main(int argc, char *argv[])
{
    uint64_t buffer[BUFFER_SIZE/8];
    int n1, i;

    while ((n1=read(0, &buffer, BUFFER_SIZE)) > 0)
    {
	//printf("%d   %d\n", strlen(buffer), n1);
    	for (i = 0; i < n1/8; i++)
    	{
    		buffer[i] = ((buffer[i] >> 8) & 0x00FF00FF00FF00FF) | ((buffer[i] << 8) & 0xFF00FF00FF00FF00);
    	}
      char* bff = (char*) buffer;
      char aux;
      for (i = n1 - n1%8; i < n1; i += 2)
      {
        aux = bff[i];
        bff[i] = bff[i+1];
        bff[i+1] = aux;
      }
        if (write(1, &buffer, n1) < 0) panic("writebuffer");
    }

    if (n1==-1) panic("readbuffer");

    return 0;
}
