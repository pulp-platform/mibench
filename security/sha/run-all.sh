#!/usr/bin/env bash

make clean
make

if [ "$MIBENCH_FAST" = true ] ; then
    ${MIBENCH_RUN} sha input_small.asc > output_small.txt
else
    ${MIBENCH_RUN} sha input_large.asc > output_large.txt
fi
