#! /usr/bin/env sh

MAKE=/usr/bin/make


exec ${MAKE} --no-builtin-rules --no-builtin-variables $@
