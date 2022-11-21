#!/bin/bash

set -e
set -x

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
	regex
	sieve
	sptl-norm
	strcat
)

for ((i = 0; i < ${#BENCH[@]}; i++)); do
	FILE=${BENCH[i]}/${BENCH[i]}
	clang -O0 -S -lpcre -lm -emit-llvm $FILE".c" -o $FILE"_O0.ll" 
	clang -O3 -S -lpcre -lm -emit-llvm $FILE".c" -o $FILE"_O3.ll" 
done
