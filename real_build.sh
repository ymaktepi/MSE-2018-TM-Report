#!/usr/bin/env bash

NAME=thesis
pdflatex -shell-escape -interaction=nonstopmode -file-line-error $NAME
biber $NAME
makeglossaries $NAME
pdflatex -shell-escape -interaction=nonstopmode -file-line-error $NAME
pdflatex -shell-escape -interaction=nonstopmode -file-line-error $NAME
