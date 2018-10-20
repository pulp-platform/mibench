#!/usr/bin/env bash
set -x
spike pk "$1" "${@:2}"
