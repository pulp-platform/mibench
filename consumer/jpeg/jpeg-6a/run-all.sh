#!/usr/bin/env bash

./configure
make clean
make

if [ "$MIBENCH_FAST" = true ] ; then
    ${MIBENCH_RUN} cjpeg -dct int -progressive -opt ../input_small.ppm > ../output_small_encode.jpeg
    ${MIBENCH_RUN} djpeg -dct int -ppm  ../input_small.jpg > ../output_small_decode.ppm

else
    ${MIBENCH_RUN} cjpeg -dct int -progressive -opt ../input_large.ppm > ../output_large_encode.jpeg
    ${MIBENCH_RUN} djpeg -dct int -ppm ../input_large.jpg > ../output_large_decode.ppm
fi
