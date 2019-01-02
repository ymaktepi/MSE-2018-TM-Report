#! /usr/bin/env bash

while inotifywait -e modify -r . @git; do
  rm ./thesis.pdf
  make
done
