.PHONY: Practicas.pdf all clean

all: Practicas.pdf


%.tex: %.raw
	./raw2tex $< > $@

%.tex: %.dat
	./dat2tex $< > $@


Practicas.pdf: Practicas.tex
	latexmk -quiet -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make Practicas.tex

clean:
	latexmk -CA
