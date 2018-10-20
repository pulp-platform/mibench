#!/usr/bin/env bash
set -x
spike --ust-trace "$1/$2.trace" pk "$2" "${@:3}"
