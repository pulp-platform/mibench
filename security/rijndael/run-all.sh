#!/usr/bin/env bash

make clean
make
# TODO: we only encode

if [ "$MIBENCH_FAST" = true ] ; then
    ${MIBENCH_RUN} rijndael input_small.asc output_small.enc e
	       1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321
    # ${MIBENCH_RUN} rijndael output_small.enc output_small.dec d \
    # 	       1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321
else
    ${MIBENCH_RUN} rijndael input_large.asc output_large.enc e \
		   1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321
    # ${MIBENCH_RUN} rijndael output_large.enc output_large.dec d \
    # 		   1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321
fi
