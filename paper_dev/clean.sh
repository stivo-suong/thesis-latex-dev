#!/bin/bash
cp article.tex b.article.tex
cp article.bib b.article.bib
rm article.*
mv b.article.tex article.tex
mv b.article.bib article.bib 

cp letter_to_reviewers.tex b.letter_to_reviewers.tex
rm letter_to_reviewers.*
mv b.letter_to_reviewers.tex letter_to_reviewers.tex


