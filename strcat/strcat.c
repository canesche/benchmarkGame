/* -*- mode: c -*-
 * $Id: strcat.c 14069 2004-06-08 17:21:42Z lattner $
 * http://www.bagley.org/~doug/shootout/
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define STUFF "hello\n"

int
main(int argc, char *argv[]) {
    long n = 100000000;
    int i, buflen = 1;
    
    clock_t start;
 	double time;
	start = clock();
    
    char *strbuf = calloc(sizeof(char), buflen);
    char *strend = strbuf;
    int stufflen = strlen(STUFF);

	

    if (!strbuf) { perror("calloc strbuf"); exit(1); }
    for (i=0; i<n; i++) {
	if (((strbuf+buflen)-strend) < (stufflen+1)) {
	    buflen = 2*buflen;
	    strbuf = realloc(strbuf, buflen);
	    if (!strbuf) { perror("realloc strbuf"); exit(1); }
	    strend = strbuf + strlen(strbuf);
	}
	/* much faster to strcat to strend than to strbuf */
	strcat(strend, STUFF);
	strend += stufflen;
    }
    printf("%d\n", (int)strlen(strbuf));
    free(strbuf);
    
    printf("Time: %lf\n", time);
    

    return(0);
}
