" Get all owned package subid

" Usage:
"   touch subid.txt
"   vim html/*.html -c "argdo so subid.vim"

v/package owned/d
%s/\v.*subid\=(\d+).*/\1/
normal Go
%w >> subid.txt
