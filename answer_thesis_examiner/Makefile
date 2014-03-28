SYSNAME = $(shell uname -s)
ifeq ($(SYSNAME),Linux)
	EXE_NAME = 'latex answer_document.tex'
else
	EXE_NAME = './cygwin_setup.sh'
endif

default:
	eval $(EXE_NAME)
bdd:
	latex answer_document.tex
clean:
	mv answer_document.tex b.answer_document.tex
	rm answer_document.*
	mv b.answer_document.tex answer_document.tex
