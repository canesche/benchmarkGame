/* -*- mode: c -*-
 * $Id: sieve.c 36673 2007-05-03 16:55:46Z laurov $
 * http://www.bagley.org/~doug/shootout/
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int
main(int argc, char *argv[]) {

    int NUM = 170000;
    static char flags[8192 + 1];
    long i, k;
    int count = 0;
    
    clock_t start;
 	double time;
	start = clock();

    while (NUM--) {
	count = 0; 
	for (i=2; i <= 8192; i++) {
	    flags[i] = 1;
	}
	for (i=2; i <= 8192; i++) {
	    if (flags[i]) {
                /* remove all multiples of prime: i */
		for (k=i+i; k <= 8192; k+=i) {
		    flags[k] = 0;
		}
		count++;
	    }
	}
    }
    printf("Count: %d\n", count);
    
    time = ((double) (clock() - start)) / CLOCKS_PER_SEC;
    printf("Time: %lf\n", time);
    
    return(0);
}

