#!/bin/bash

latex answer_document.tex
for auxfile in chap*.aux
do
    bibtex `basename $auxfile .aux`
done
latex answer_document.tex
latex answer_document.tex
