#! /usr/bin/env sh

MAKE=/usr/bin/make
CPUs=$(grep -c ^processor /proc/cpuinfo)


exec ${MAKE} --no-builtin-rules --no-builtin-variables -j ${CPUs} $@
