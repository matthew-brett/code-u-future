SOURCES:=$(patsubst %.md,%.pdf,$(wildcard *.md))

all:$(SOURCES)
	@echo $(SOURCES);

%.pdf : %.md
	gpp -H $< | pandoc \
		--filter pandoc-citeproc \
		-t beamer \
		-o $@

clean:
	rm *.pdf
