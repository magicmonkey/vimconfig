let mapleader = "\<Space>"

set nocompatible

" Setup Pathogen, which allows plugins to live in their own dirs
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" I only use terms which are 255.  Honest.
set t_Co=255

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Show a hint in the status bar when the leader key is pressed (which is \ by default)
set showcmd

" Allow buffers to go into the background without being saved
set hidden

" don't wrap lines
set nowrap

" a tab is four spaces
set tabstop=4

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" always set autoindenting on
set autoindent

" copy the previous indentation on autoindenting
set copyindent

" Enable filetype-specific stuff
filetype on
filetype plugin on
filetype indent on

" always show line numbers
set number

" number of spaces to use for autoindenting
set shiftwidth=4

" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" set show matching parenthesis
set showmatch

" ignore case when searching
set ignorecase

" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase

" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" highlight search terms
set hlsearch

" show search matches as you type
set incsearch

" remember more commands and search history
set history=1000

" use many muchos levels of undo
set undolevels=1000

set wildignore=*.swp,*.bak,*.pyc,*.class

" change the terminal's title
set title

" don't beep
set visualbell
set noerrorbells

" Keep temp files in a central place, not littering my source tree
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Swap files are just annoying
set noswapfile

" Make vim scroll this many lines from the edge of the screen
set scrolloff=3

" Improve filename tab-completion
set wildmenu
set wildmode=list:longest

" Highlight trailing whitespace and lines which fall off the screen
set listchars=tab:>-,trail:·,extends:#
" Toggle list highlighting
nmap <silent> <leader>s :set nolist!<CR>

" Only highlight matching bracket briefly
set mat=2

" Always show the statusline
set laststatus=2

" Format the statusline
set statusline=\ %{fugitive#statusline()}\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
function! CurDir()
	let curdir = substitute(getcwd(), '/home/kevin/', "~/", "g")
	return curdir
endfunction
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	else
		return ''
	endif
endfunction

" Pick a color scheme
colorscheme candycode
":colorscheme zenburn

" Run the current file in nodejs
nmap <silent> <C-n> :!node %<CR>

" Disable markdown folding
let g:vim_markdown_folding_disabled=1

" Some custom stuff for go coding
au BufRead,BufNewFile *.go set filetype=go
nmap <silent> <leader>g :GoRun main.go<CR>
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>de <Plug>(go-def)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>gf :GoFmt<CR>
au FileType go nmap <Leader>gi :GoImports<CR>

let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1


" Move the vim wiki into Google Drive
let g:vimwiki_list = [{'path': '~/googledrive/vimwiki/work'},{'path': '~/googledrive/vimwiki/personal'}]

syntax on

set wrap
set lbr

