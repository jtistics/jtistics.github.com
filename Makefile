
TRANSITION=zoom

index.html:	*.md res/* *.css reveal.js Makefile
	pandoc -s index.md -t revealjs --css=reveal.js/css/revealjs.css --css=jtistics.css -Vtransition=$(TRANSITION) -o $@

reveal.js:
	git clone --depth 1 https://github.com/hakimel/reveal.js.git
	rm -rf $@/*.md $@/*.js $@/*.json $@/*.html $@/LICENSE $@/plugin $@/test $@/.git* $@/.travis*

clean:
	rm index.html
	git clean -fx

mrproper:
	rm -rf reveal.js
