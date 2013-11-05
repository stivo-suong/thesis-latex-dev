bdd:
	latex paper.tex
	bibtex paper
	latex paper.tex
	dvips paper.dvi
clean:
	mv paper.tex b.paper.tex
	mv paper.bib b.paper.bib
	rm paper.*
	mv b.paper.bib paper.bib
	mv b.paper.tex paper.tex
guide:
	latex tRSLguide.tex
	latex tRSLguide.tex
clean_guide:
	mv tRSLguide.tex b.tRSLguide.tex
	mv tRSLguide.bib b.tRSLguide.bib
	rm tRSLguide.*
	mv b.tRSLguide.bib tRSLguide.bib
	mv b.tRSLguide.tex tRSLguide.tex
