FILE=linux
STYLE=style.json
EMAIL :=

$(FILE).pdf: $(FILE).rst
	cat $(FILE).rst \
        | sed s/CONFIG_EMAIL/$(EMAIL)/g \
        | rst2pdf -b1 -s $(STYLE) -o $(FILE).pdf

show: $(FILE).pdf
	impressive -t Crossfade -T 100 -f $(FILE).pdf

clean:
	rm -rf *.pdf
