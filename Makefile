.PHONY: clean distclean paketti
opk4.pdf: opk4.tex opk4.bib
	pdflatex opk4.tex
	biber opk4 # if somefile.bib is your bibliography
	pdflatex opk4.tex
	pdflatex opk4.tex

clean:
	-rm *~ *.aux *.log *.toc *.lof *.lot *.run.xml *.bcf *.out *.aux *.bbl *.blg

paketti:
	cd ../ && zip -r opk4_esimerkki.zip opk4_esimerkki/Makefile opk4_esimerkki/kaaviokuva.pdf opk4_esimerkki/*.{tex,bib,cls,txt,bat} # GNU dependency in {} syntax?

distclean: clean
	-rm opk4.pdf
