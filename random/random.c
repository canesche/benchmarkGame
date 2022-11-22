/* -*- mode: c -*-
 * $Id: random.c 36673 2007-05-03 16:55:46Z laurov $
 * http://www.bagley.org/~doug/shootout/
 */

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define inline static

#define IM 139968
#define IA 3877
#define IC 29573

inline double gen_random(double max) {
  static long last = 42;
    
  last = (last * IA + IC) % IM;
  return( max * last / IM );
}

int main(int argc, char *argv[]) {

  int N = 400000000;
    
   clock_t start;
 	double time;
	start = clock();
    
  while (N--) {
    gen_random(100.0);
  }
  printf("%.9f\n", gen_random(100.0));
  
  time = ((double) (clock() - start)) / CLOCKS_PER_SEC;
    printf("Time: %lf\n", time);
  
  return(0);
}
