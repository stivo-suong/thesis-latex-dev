pdftk A=thesis.pdf cat A3-4 output chap_abstract.pdf
pdftotext chap_abstract.pdf
pdftk A=thesis.pdf cat A7-20 output chap_contents.pdf
pdftotext chap_contents.pdf
pdftk A=thesis.pdf cat A21-32 output chap1.pdf
pdftotext chap1.pdf
pdftk A=thesis.pdf cat A33-62 output chap2.pdf
pdftotext chap2.pdf
pdftk A=thesis.pdf cat A61-74 output chap3.pdf
pdftotext chap3.pdf
pdftk A=thesis.pdf cat A75-98 output chap4.pdf
pdftotext chap4.pdf
pdftk A=thesis.pdf cat A99-150 output chap5.pdf
pdftotext chap5.pdf
pdftk A=thesis.pdf cat A151-158 output chap6.pdf
pdftotext chap6.pdf

#makeindex thesis.nlo -s nomencl.ist -o thesis.nls
#latex -interaction=nonstopmode thesis.tex

