MARKDOWN=$(wildcard slides/*.md)
HTML=$(MARKDOWN:.md=.html)

all:	slides/slides.html
	open $?

slides/slides.html:	content.yml slides.mustache
	mustache $^ > $@

content.yml:	$(HTML) content.pl
	content.pl $(HTML) > $@

%.html: %.md
	kramdown $^ > $@

clean::
	rm -r content.yml slides/*.html
