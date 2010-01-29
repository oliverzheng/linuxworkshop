FILE=linux
STYLE=style.json

show: $(FILE).pdf
	impressive -t Crossfade -T 100 $(FILE).pdf

$(FILE).pdf: $(FILE).rst
	rst2pdf $(FILE).rst -b1 -s $(STYLE) -o $(FILE).pdf

clean:
	rm -rf *.pdf
