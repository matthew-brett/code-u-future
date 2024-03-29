all: slides handout debate

SOURCE=code_u_future

# Need gpp for conditional stuff
# "brew install gpp" on macOS

slides: $(SOURCE).md
	gpp -H $(SOURCE).md | pandoc \
	    --filter pandoc-citeproc \
	    -t beamer \
	    -o $(SOURCE)_slides.pdf

handout: $(SOURCE).md
	gpp -H -DHANDOUT=1 $(SOURCE).md | pandoc \
	    --filter pandoc-citeproc \
	    -o $(SOURCE)_handout.pdf

.PHONY: debate
debate:
	$(MAKE) -C debate

clean:
	rm *.pdf *.html ; $(MAKE) -C debate clean
