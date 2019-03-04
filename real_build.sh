#!/usr/bin/env bash

NAME=thesis
pdflatex -shell-escape -interaction=nonstopmode -file-line-error $NAME
biber $NAME
makeglossaries $NAME
pdflatex -shell-escape -interaction=nonstopmode -file-line-error $NAME
pdflatex -shell-escape -interaction=nonstopmode -file-line-error $NAME

cp thesis.pdf NHuguenin_TM_2018-2019_S1.PDF
