

index.html:	index.md reveal.js
	pandoc -s index.md -t revealjs -o $@

reveal.js:
	git clone https://github.com/hakimel/reveal.js.git
	rm -rf $@/*.md $@/*.js $@/*.json $@/*.html $@/LICENSE $@/plugin $@/test $@/.*

clean:
	git clean -fx
