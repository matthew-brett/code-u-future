default: code_u_future.pdf

%.pdf : %.md
	pandoc --filter pandoc-citeproc -s $< -o $@

clean:
	rm *.pdf
