/* -*- mode: c -*-
 * $Id: fib2.c 36673 2007-05-03 16:55:46Z laurov $
 * http://www.bagley.org/~doug/shootout/
 */

int atoi(char *);
#include <stdio.h>
#include <time.h>

unsigned long
fib(unsigned long n) {
    if (n < 2)
	return(1);
    else
	return(fib(n-2) + fib(n-1));
}

int
main(int argc, char *argv[]) {
	
	clock_t start;
 	double time;
	start = clock();

    int N = 43;
    printf("%ld\n", fib(N));
    
    time = ((double) (clock() - start)) / CLOCKS_PER_SEC;
    printf("Time: %lf\n", time);
    
    return(0);
}
