#!/usr/bin/env bash

# A script to run all the MiBench tests for an embedded target.

# Copyright 2012 Embecosm Limted

# Contributed by Jeremy Bennett <jeremy.bennett@embecosm.com>

# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the Free
# Software Foundation; either version 3 of the License, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
# more details.

# You should have received a copy of the GNU General Public License along with
# this program; if not, write to the Free Software Foundation, Inc., 51
# Franklin Street - Fifth Floor, Boston, MA 02110-1301, USA.

#srcdirs="automotive consumer network office security telecomm"
# srcdirs="automotive/basicmath
#          automotive/bitcount
#          automotive/qsort
#          automotive/susan"

SRCDIRS="consumer/jpeg/jpeg-6a telecomm/adpcm/src security/rijndael security/sha telecomm/fft"


CURRDIR=$(pwd)

# compiler
export CC="$RISCV/bin/riscv64-unknown-elf-gcc"
# user large or small tests
export MIBENCH_FAST=true

# whether we want tracing
export MIBENCH_TRACE=false


# command to run binaries
if [ "$MIBENCH_TRACE" = true ] ; then
    export RUNIT="spike-wrapper-traces.sh $CURRDIR/traces"
else
    export RUNIT=spike-wrapper.sh
fi

# path passed to run scripts in directories
export MIBENCH_RUN="$CURRDIR/$RUNIT"

for d in ${SRCDIRS}
do
    echo ${d}
    cd ${d}
    ./run-all.sh
    cd ${CURRDIR}
done
