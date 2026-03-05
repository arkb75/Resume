JOBNAME = abdul_khurram_resume

all: $(JOBNAME).pdf

$(JOBNAME).pdf: abdul_khurram_resume.tex
pdflatex -interaction=nonstopmode abdul_khurram_resume.tex

clean:
rm -f $(JOBNAME).aux $(JOBNAME).log $(JOBNAME).out $(JOBNAME).pdf

.PHONY: all clean
