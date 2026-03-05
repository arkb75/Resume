JOBNAME = abdul_khurram_resume

all: $(JOBNAME).pdf

$(JOBNAME).pdf: main.tex
pdflatex -interaction=nonstopmode -jobname=$(JOBNAME) main.tex

clean:
rm -f $(JOBNAME).aux $(JOBNAME).log $(JOBNAME).out $(JOBNAME).pdf

.PHONY: all clean
