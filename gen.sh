#!/bin/bash

RETDEC=../../retdec-install/bin/retdec-decompiler
MCTOLL=../../llvm-project/build/bin/llvm-mctoll

RETDEC_PATH=../retdec-output
MCTOLL_PATH=../mctoll-output

cd bin
mkdir -p $RETDEC_PATH
mkdir -p $MCTOLL_PATH
rm -rf *.*

for x in $(ls);
do
  $RETDEC $x
  mkdir -pv $RETDEC_PATH/$x
  mv -v $x.* $RETDEC_PATH/$x
  cp -v $x $RETDEC_PATH/$x
  $MCTOLL -d $x --include-files="/usr/include/stdio.h,/usr/include/stdlib.h,/usr/include/string.h,/usr/include/time.h"
  mkdir -vp $MCTOLL_PATH/$x
  ls $x-*
  mv -v $x-* $MCTOLL_PATH/$x
  cp -v $x $MCTOLL_PATH/$x
done
