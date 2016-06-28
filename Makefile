#target: prerequisites
#    shell_script arg1 arg2 arg3
# pandoc -V documentclass=book (book, article, extarticle)
# pandoc --chapters
# extarticle
# article
# margen setup: https://stackoverflow.com/questions/13515893/set-margin-size-when-converting-from-markdown-to-pdf-with-pandoc#13516042


TITLE="FairTalk"

%.html: %.md
	pandoc -s -f markdown -t html --css css/pandoc.css -T $(TITLE) -s -o $@ $<

clean:
	rm *.html
