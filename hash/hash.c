/* -*- mode: c -*-
 * $Id: hash.c 36673 2007-05-03 16:55:46Z laurov $
 * http://www.bagley.org/~doug/shootout/
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "simple_hash.h"
#include <time.h>

int main(int argc, char *argv[]) {

    int i, c=0, n = 3500000;
    char buf[32];
    
    clock_t start;
 	double time;
	start = clock();
	
    struct ht_ht *ht = ht_create(n);
    
    for (i=1; i<=n; i++) {
	sprintf(buf, "%x", i);
	(ht_find_new(ht, buf))->val = i;
    }

    for (i=n; i>0; i--) {
	sprintf(buf, "%d", i);
	if (ht_find(ht, buf)) c++;
    }

    ht_destroy(ht);

    printf("%d\n", c);
    
    time = ((double) (clock() - start)) / CLOCKS_PER_SEC;
    printf("Time: %lf\n", time);
    
    return(0);
}
