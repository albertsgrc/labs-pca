#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>

typedef unsigned long long bignum;
typedef unsigned long t_elem;

typedef struct {
    t_elem *p;		/* pointer to array */
    uint bitsPerByte;		/* 8 on normal systems */
    uint bytesPerElem;		/* sizeof(unsigned int) */
    uint bitsPerElem;		/* for bit arithmetic */
    bignum bitsInArray;		/* how many bits in array */
    uint intsInArray;		/* how many uints to give necessary bits */

    uint bitsPerElemMask;
    uint bitsPerElemLog2;

} BITARRAY;

void freeBitArray(BITARRAY * ba)
{
/*    free(ba->p);
    free(ba); */
} 

BITARRAY *createBitArray(bignum bits)
{
    BITARRAY *ba = malloc(sizeof(BITARRAY));
    assert(ba != NULL);
    ba->bitsPerByte = 8;
    ba->bytesPerElem = sizeof(t_elem);
    ba->bitsPerElem = ba->bitsPerByte * ba->bytesPerElem;
    ba->bitsInArray = bits;
    ba->intsInArray = bits / ba->bitsPerElem + 1;
    

    ba->bitsPerElemLog2 = __builtin_ctz(ba->bitsPerElem);
    ba->bitsPerElemMask = ba->bitsPerElem - 1;

    ba->p = malloc(ba->intsInArray * ba->bytesPerElem);
    assert(ba->p != NULL);
    return ba;
}

void setBit(BITARRAY * ba, bignum bitSS)
{
    t_elem *pElem = ba->p + (bitSS >> ba->bitsPerElemLog2);
    t_elem remainder = (bitSS & ba->bitsPerElemMask);
    *pElem |= ((t_elem)(1) << remainder);
} 

void clearBit(BITARRAY * ba, bignum bitSS)
{
    t_elem *pElem = ba->p + (bitSS >> ba->bitsPerElemLog2);
    t_elem remainder = (bitSS & ba->bitsPerElemMask);
    t_elem mask = (t_elem)(1) << remainder;
    mask = ~mask;
    *pElem &= mask;
} 

int getBit(BITARRAY * ba, bignum bitSS)
{
    t_elem *pElem = ba->p + (bitSS >> ba->bitsPerElemLog2);
    t_elem remainder = (bitSS & ba->bitsPerElemMask);
    t_elem ret = *pElem;
    ret &= ((t_elem)(1) << remainder);
    return (ret != (t_elem)(0));
}

void clearAll(BITARRAY * ba)
{
    bignum intSS;
    for (intSS = 0; intSS <= ba->intsInArray; intSS++) {
	*(ba->p + intSS) = (t_elem)(0);
    }
}

void setAll(BITARRAY * ba)
{
    bignum intSS;
    for (intSS = 0; intSS <= ba->intsInArray; intSS++) {
	*(ba->p + intSS) = ~(t_elem)(0);
    }
}

void printPrime(bignum bn)
{
    static char buf[1000];
    sprintf(buf, "%ull", bn);
    buf[strlen(buf) - 2] = '\0';
    printf("%s\n", buf);
} 

void findPrimes(bignum topCandidate)
{
    BITARRAY *ba = createBitArray(topCandidate);
    assert(ba != NULL);		/* SET ALL BUT 0 AND 1 TO PRIME STATUS */
    setAll(ba);
    clearBit(ba, 0);
    clearBit(ba, 1);		/* MARK ALL THE NON-PRIMES */
    bignum thisFactor = 2;
    bignum lastSquare = 0;
    bignum thisSquare = 0;
    while (thisFactor * thisFactor <= topCandidate) {	/* MARK THE MULTIPLES OF THIS FACTOR */
	bignum mark = thisFactor + thisFactor;
	while (mark <= topCandidate) {
	    clearBit(ba, mark);
	    mark += thisFactor;
	}			/* PRINT THE PROVEN PRIMES SO FAR */
	thisSquare = thisFactor * thisFactor;
	for (; lastSquare < thisSquare; lastSquare++) {
	    if (getBit(ba, lastSquare))
		printPrime(lastSquare);
	}			/* SET thisFactor TO NEXT PRIME */
	thisFactor++;
	while (getBit(ba, thisFactor) == 0)
	    thisFactor++;
	assert(thisFactor <= topCandidate);
    }				/* PRINT THE REMAINING PRIMES */
    for (; lastSquare <= topCandidate; lastSquare++) {
	if (getBit(ba, lastSquare))
	    printPrime(lastSquare);
    }
    freeBitArray(ba);
}

void test()
{
    int ss;
    BITARRAY *ba = createBitArray(77);
    clearAll(ba);		/*setAll(ba); */
    setBit(ba, 0);
    setBit(ba, 64);
    setBit(ba, 10);
    clearBit(ba, 10);
    clearBit(ba, 0);
    setBit(ba, 64);
    setBit(ba, 10);
    setBit(ba, 0);
    for (ss = 0; ss < 78; ss++) {
	if (getBit(ba, ss) != 0) {
	    printf("%d", ss);
	    printf("=%d ON!!!", (getBit(ba, ss)));
	    printf("\n");
	}
    }
    printf("First int is %ull.\n", *(ba->p));
}

int main(int argc, char *argv[])
{
    bignum topCandidate;
    if (argc > 1)
	topCandidate = atoll(argv[1]);	/*        test();  */
    else topCandidate = 10000000;
    findPrimes(topCandidate);
    return 0;
}
