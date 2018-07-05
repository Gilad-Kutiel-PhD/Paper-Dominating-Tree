zip:
	rm -f src.zip && zip -r src.zip src

flat:
	mkdir -p flat;./latex-flat.awk src/main.tex > flat/main.tex; cp src/*.bib flat/; cp src/*.cls flat/

clean:
	git clean -dfx
