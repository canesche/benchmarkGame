#!/bin/bash

set -e
#set -x

BENCH=(
	ackermann
	ary3
	bin-trees
	fannkuch
	fasta
	fib2
	hash
	heapsort
	lists
	matrix
	methcall
	random
	#regex
	sieve
	sptl-norm
	strcat
)

OPTION="-lpcre -lm"

for ((i = 0; i < ${#BENCH[@]}; i++)); do
	echo "Bench: "${BENCH[i]}
	FILE=${BENCH[i]}/${BENCH[i]}
	clang $OPTION $FILE"_O0.ll" -o a.out
	./a.out | grep "Time:" 
	clang $OPTION $FILE"_O3.ll" -o a.out
	./a.out | grep "Time:" 
	clang $OPTION $FILE"_ollvm.ll" -o a.out
	./a.out | grep "Time:" 
done
