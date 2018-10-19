MiBench
=======

The original MiBench code as downloaded from
http://www.eecs.umich.edu/mibench/index.html is held in the master branch.

This branch contains a version modified for embedded targets and running
automtically.

Two scripts, namely `spike-wrapper.sh` and `spike-wrapper-traces.sh`, are
provided which are called through `run-all.sh`. They server as wrappers for
[spike](https://github.com/riscv/riscv-isa-sim), a RISC-V simulator, which runs
the benchmarks. The `spike-wrapper-traces.sh` additionaly produces execution
traces stored in a cvs file in the same folder as the executed binary. Those
traces can be used with
[trdb](https://github.com/pulp-platform/trace_debugger/tree/master/trdb) to do
trace compression benchmarks.