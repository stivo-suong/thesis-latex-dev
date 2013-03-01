final:
	FINAL=1 ./texpp.awk < article_pp.tex > article.tex
	latex -interaction=nonstopmode 'article.tex'
	bibtex article
	latex 'article.tex'
	latex 'article.tex'
review:
	REVIEW=1 ./texpp.awk < article_pp.tex > article.tex
	latex -interaction=nonstopmode 'article.tex'
	bibtex article
	latex -interaction=nonstopmode 'article.tex'
	latex -interaction=nonstopmode 'article.tex'

diff:
	detex article.tex > detex.article.tex
	diff detex.article.tex detex.article.tex.updated
pdf:
	dvipdf article.dvi
clean:
	./clean.sh
