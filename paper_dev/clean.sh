#!/bin/bash
cp article.tex b.article.tex
cp article.bib b.article.bib
rm article.*
mv b.article.tex article.tex
mv b.article.bib article.bib 
