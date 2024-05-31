@PHONY: all qrslides website preview publish clean

# cannot name this target slides becasue there's a slides folder
# qrslides for quarto render slides
qrslides:
	find slides -type f -name *.qmd -exec quarto render {} \;

render:
	quarto render

preview:
	quarto preview index.qmd --port 8888

clean:
	rm -rf docs/ _site/

	rm -rf slides/*_files
	rm slides/*.html
