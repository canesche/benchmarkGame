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

OPTION="-lpcre -lm"

CLANG_OLLVM=/home/canesche/git/obfuscator/build/bin/clang
FLAG_OLLVM="-mllvm -sub -mllvm -fla -mllvm -bcf"


for ((i = 0; i < ${#BENCH[@]}; i++)); do
	FILE=${BENCH[i]}/${BENCH[i]}
	#clang -O0 -S $OPTION -emit-llvm $FILE".c" -o $FILE"_O0.ll" 
	#clang -O3 -S $OPTION -emit-llvm $FILE".c" -o $FILE"_O3.ll" 
	$CLANG_OLLVM -O3 -S $FLAG_OLLVM $OPTION -emit-llvm $FILE".c" -o $FILE"_ollvm.ll" 
done
