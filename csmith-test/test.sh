#!/bin/bash

CC="$HOME/.local/bin/clang-17"
CFLAGS="-Wall -g -w -std=c11"
OFLAGS="-I$HOME/csmith/include -o"

CSMITH_FLAGS="--no-structs --no-unions --no-arrays"

RETDEC="../../retdec-install/bin/retdec-decompiler"
RETDEC_FLAGS="--mode bin --output"

Lifter="$RETDEC $RETDEC_FLAGS"

DO_NOT_OUTPUT_IN_CLI="> /dev/null 2>&1"
FILENAME="random"

for i in $(seq 1 1)
do
    csmith $CSMITH_FLAGS > "$FILENAME.c"

    $CC $CFLAGS -emit-llvm -S "$FILENAME.c" $OFLAGS "compiled_$FILENAME.ll"

    $CC $CFLAGS "$FILENAME.c" $OFLAGS "$FILENAME"

    $Lifter "lifted_$FILENAME.c" "$FILENAME" > /dev/null 2>&1

    python3 test.py

    rm *$FILENAME*
done