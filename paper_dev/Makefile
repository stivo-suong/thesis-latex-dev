final:
	FINAL=1 ./texpp.awk < article_pp.tex > article.tex
	latex 'article.tex'
	bibtex article
	latex 'article.tex'
	latex 'article.tex'
	#dvips article.dvi
	#ps2pdf article.ps
review:
	REVIEW=1 ./texpp.awk < article_pp.tex > article.tex
	latex -interaction=nonstopmode 'article.tex'
	bibtex article
	latex -interaction=nonstopmode 'article.tex'
	latex -interaction=nonstopmode 'article.tex'

letter:
	latex -interaction=nonstopmode 'letter_to_reviewers.tex'
diff:
	detex article.tex > detex.article.tex
	diff detex.article.tex detex.article.tex.updated
pdf:
	dvipdf article.dvi
clean:
	./clean.sh
