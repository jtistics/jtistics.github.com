

index.html:	index.md reveal.js
	pandoc -s index.md -t revealjs -o $@

reveal.js:
	git clone --depth 1 https://github.com/hakimel/reveal.js.git
	rm -rf $@/*.md $@/*.js $@/*.json $@/*.html $@/LICENSE $@/plugin $@/test $@/.git* $@/.travis*

clean:
	git clean -fx

mrproper:
	rm -rf reveal.js
