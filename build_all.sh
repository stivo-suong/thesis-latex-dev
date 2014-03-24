#pdftk A=thesis.pdf cat A3-4 output chap_abstract.pdf
#pdftotext chap_abstract.pdf
#pdftk A=thesis.pdf cat A7-20 output chap_contents.pdf
#pdftotext chap_contents.pdf
pdftk A=thesis.pdf cat A1-19 output chap0.pdf
pdftotext chap0.pdf
pdftk A=thesis.pdf cat A20-31 output chap1.pdf
pdftotext chap1.pdf
pdftk A=thesis.pdf cat A32-61 output chap2.pdf
pdftotext chap2.pdf
pdftk A=thesis.pdf cat A62-74 output chap3.pdf
pdftotext chap3.pdf
pdftk A=thesis.pdf cat A75-98 output chap4.pdf
pdftotext chap4.pdf
pdftk A=thesis.pdf cat A99-150 output chap5.pdf
pdftotext chap5.pdf
pdftk A=thesis.pdf cat A151-157 output chap6.pdf
pdftotext chap6.pdf
pdftk A=thesis.pdf cat A158-172 output chap9.pdf
pdftotext chap9.pdf
pdftk A=thesis.pdf cat A173-183 output chap_references.pdf
pdftotext chap_references.pdf

#makeindex thesis.nlo -s nomencl.ist -o thesis.nls
#latex -interaction=nonstopmode thesis.tex

