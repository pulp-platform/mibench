#!/usr/bin/env bash

make clean
make

if [ "$MIBENCH_FAST" = true ] ; then
    ${MIBENCH_RUN} ../bin/rawcaudio < ../data/small.pcm > ../output_small.adpcm
    #${MIBENCH_RUN} ../bin/rawdaudio < ../data/small.adpcm > ../output_small.pcm

else
    ${MIBENCH_RUN} ../bin/rawcaudio < ../data/large.pcm > ../output_large.adpcm
    #${MIBENCH_RUN} ../bin/rawdaudio < ../data/large.adpcm > ../output_large.pcm

fi
