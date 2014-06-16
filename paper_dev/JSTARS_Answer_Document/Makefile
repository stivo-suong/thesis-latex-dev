SYSNAME = $(shell uname -s)
ifeq ($(SYSNAME),Linux)
	EXE_NAME = './build.sh'
else
	EXE_NAME = './cygwin_setup.sh'
endif

default:
	eval $(EXE_NAME)
bdd:
	latex answer_document.tex
clean:
	./clean.sh
	#mv answer_document.tex b.answer_document.tex
	#mv answer_document.bib b.answer_document.bib
	#rm answer_document.*
	#mv b.answer_document.tex answer_document.tex
	#mv b.answer_document.bib answer_document.bib
