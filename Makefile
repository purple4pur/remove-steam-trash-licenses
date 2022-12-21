.PHONY: subid run
subid: subid.vim
	rm -f .subid.txt.sw*
	touch subid.txt
	vim html/*.html -c "argdo so subid.vim"

run: run.sh url.txt
	./run.sh url.txt $(l)
