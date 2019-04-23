#!/bin/bash
for arg do
  shift
  [ "$arg" = "-fpch-preprocess" ] && continue
  set -- "$@" "$arg"
done

gcc "$@"