all : talk.pdf

talk.pdf : talk.tex
	latexmk -f -pdf talk.tex
	make clean-studio

.PHANTOM : clean

clean-aux :
	touch _.aux _.blg _.fdb_latexmk _.fls _.log _.nav _.out _.snm _.toc
	rm *.aux *.blg *.fdb_latexmk *.fls *.log *.nav *.out *.snm *.toc

clean-studio :
	make clean-aux
	touch _.sta _.synctex.gz _.vrb
	rm *.sta *.synctex.gz *.vrb
clean :
	${RM} *~ talk.pdf
