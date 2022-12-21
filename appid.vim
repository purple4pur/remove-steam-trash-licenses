" Get all appids, then construct links to appid/subs/

" Usage:
"   navigate to the html file of
"           https://steamdb.info/calculator/<steamid>/?cc=cn&all_games,
"   then ':so appid.vim'

v/^<a.*app.*a>$/d
%s/\v^.*"\/app\/(\d+)\/".*$/https:\/\/steamdb.info\/app\/\1\/subs\//
