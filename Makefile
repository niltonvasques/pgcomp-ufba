# FILE

LATEX_FILE 	= main.tex
SLIDES_FILE 	= slides.tex
LATEX_AUX 	=  main.aux


# TOOLCHAINS

CC 	= pdflatex
BIB	= bibtex
REMOVE  = rm


slides: clean
	$(CC) --shell-escape $(SLIDES_FILE)

all: biblio
	$(CC) --shell-escape $(LATEX_FILE) ufbathesis.cls

pdflatex:
	$(CC) --shell-escape $(LATEX_FILE) ufbathesis.cls


biblio: clean pdflatex
	$(BIB) $(LATEX_AUX)
	$(CC) --shell-escape $(LATEX_FILE)
clean:
	$(REMOVE) *.aux *.bbl *.blg *.out *.log -f
