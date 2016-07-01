CC= gcc
CFLAGS= -O2 -g -march=native -fno-inline
all:
	$(CC) $(CFLAGS) vector_add.c -o vector_add.e8  -DCHAR
	$(CC) $(CFLAGS) vector_add.c -o vector_add.e16 -DSHORT
	$(CC) $(CFLAGS) vector_add.c -o vector_add.e32 -DINT
	$(CC) $(CFLAGS) vector_add.c -o vector_add_ma_compiler.v8  -DVECTORIAL -DCHAR 
	$(CC) $(CFLAGS) vector_add.c -o vector_add_mu_compiler.v8  -DVECTORIAL -DCHAR -DUNALIGNED
	$(CC) $(CFLAGS) vector_add.c -o vector_add_ma_compiler.v16 -DVECTORIAL -DSHORT
	$(CC) $(CFLAGS) vector_add.c -o vector_add_mu_compiler.v32 -DVECTORIAL -DINT -DUNALIGNED
	$(CC) $(CFLAGS) vector_add.c -o vector_add_ma_compiler.v32 -DVECTORIAL -DINT 
	$(CC) $(CFLAGS) vector_add.c -o vector_add_ma_iu.v32 -DVECTORIAL -DINT -DINTRINSIC_UNALIGNED 
	$(CC) $(CFLAGS) vector_add.c -o vector_add_ma_ia.v32 -DVECTORIAL -DINT -DINTRINSIC_ALIGNED
	$(CC) $(CFLAGS) vector_add.c -o vector_add_mu_iu.v32 -DVECTORIAL -DINT -DINTRINSIC_UNALIGNED -DUNALIGNED
	$(CC) $(CFLAGS) vector_add.c -o vector_add_mu_ia.v32 -DVECTORIAL -DINT -DINTRINSIC_ALIGNED -DUNALIGNED
	$(CC) -O3 -g -march=native -fno-inline vector_add.c -o vector_add.e32.3 -DINT
	$(CC) $(CFLAGS) vector_add-opt.c -o vector_add-opt.2 -DVECTORIAL -DINT -DIINTRISIC_ALIGNED
clean:
	rm -f vector_add.e* vector_add_*.v*
