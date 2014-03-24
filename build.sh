latex -interaction=nonstopmode thesis.tex
bibtex thesis
latex -interaction=nonstopmode thesis.tex
#makeindex thesis.nlo -s nomencl.ist -o thesis.nls
#latex -interaction=nonstopmode thesis.tex

