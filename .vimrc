:set nocompatible

" Setup Pathogen, which allows plugins to live in their own dirs
:call pathogen#helptags()
:call pathogen#runtime_append_all_bundles()

" Quickly edit/reload the vimrc file
:nmap <silent> <leader>ev :e $MYVIMRC<CR>
:nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Allow buffers to go into the background without being saved
:set hidden

" don't wrap lines
:set nowrap

" a tab is four spaces
:set tabstop=4

" allow backspacing over everything in insert mode
:set backspace=indent,eol,start

" always set autoindenting on
:set autoindent

" copy the previous indentation on autoindenting
:set copyindent

" always show line numbers
:set number

" number of spaces to use for autoindenting
:set shiftwidth=4

" use multiple of shiftwidth when indenting with '<' and '>'
:set shiftround

" set show matching parenthesis
:set showmatch

" ignore case when searching
:set ignorecase

" ignore case if search pattern is all lowercase, case-sensitive otherwise
:set smartcase

" insert tabs on the start of a line according to shiftwidth, not tabstop
:set smarttab

" highlight search terms
:set hlsearch

" show search matches as you type
:set incsearch

" remember more commands and search history
:set history=1000

" use many muchos levels of undo
:set undolevels=1000

:set wildignore=*.swp,*.bak,*.pyc,*.class

" change the terminal's title
:set title

" don't beep
:set visualbell
:set noerrorbells

" Backup files are just annoying
:set nobackup

" Swap files are just annoying
:set noswapfile

