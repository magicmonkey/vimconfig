" {{ .local hax
" This is a temp kludge, ultimately I would like it to do the translation
" itself.
augroup filetypedetect
    "au! BufRead,BufNewFile *.vimrc.local        setfiletype vim
    au! BufRead,BufNewFile *.pentadactylrc       setfiletype vim
    au! BufRead,BufNewFile *.screenrc.local     setfiletype screen
    au! BufRead,BufNewFile *.json               setfiletype json 
augroup END
" }}

