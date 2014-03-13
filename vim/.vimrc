" General setup
set t_Co=256 " terminal supports 256 colors
set modelines=0 " disable security holes
set nocompatible " not compatiable with vi
set encoding=utf-8

" Load Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'gnupg'
Bundle 'https://github.com/jnwhiteh/vim-golang.git'
Bundle 'https://github.com/hynek/vim-python-pep8-indent.git'
Bundle 'https://github.com/SirVer/ultisnips'
Bundle 'https://github.com/mustache/vim-mustache-handlebars.git'
Bundle 'https://github.com/kien/ctrlp.vim.git'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsSnippetDirectories=["my-snippets"]

let g:ctrlp_custom_ignore = '\v[\/](tmp|cache|\.egg-info|node_modules)$'

" Basic settings
syntax on " syntax highlighing
filetype on " try to detect filetypes
filetype plugin indent on " enable loading indent file for filetype

" Colours
"hi SpecialKey ctermfg=DarkGray
set background=light

" Indentation
set autoindent " always set autoindenting on
set smartindent " use smart indent if there is no indent file
set tabstop=4 " <tab> inserts 4 spaces
set shiftwidth=4 " but an indent level is 2 spaces wide.
set softtabstop=4 " <BS> over an autoindent deletes both spaces.
set expandtab " Use spaces, not tabs, for autoindent/tab key.
set shiftround " rounds indent to a multiple of shiftwidth
set backspace=indent,eol,start " Allow backspacing over autoindent, EOL, and BOL

" Searching
set ignorecase " Default to using case insensitive searches,
set smartcase " unless uppercase letters are used in the regex.
set hlsearch
set incsearch

" Messages, Info, Status
set ls=2 " allways show status line
set showcmd " Show incomplete normal mode commands as I type.
set report=0 " : commands always print changed line count.
set shortmess+=a " Use [+]/[RO]/[w] for modified/readonly/written.
set laststatus=2 " Always show statusline, even if only 1 window.
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})

""" Completions
set wildmenu " Menu completion in command mode on <Tab>
set wildmode=full " <Tab> cycles between all matching choices.
set wildignore+=*.o,*.obj,.git,*.pyc

" Display tabs with :set list & displays when a line runs off-screen
set listchars=tab:¦·,trail:·
set list

" Wrapping ... ugh!
set nowrap


"
" File type configuration
"

au BufRead,BufNewFile *.json setlocal filetype=json
au BufRead,BufNewFile *.mustache setlocal filetype=html

" HTML, JavaScript, CSS et al
" autocmd FileType xml,xhtml,html,css,javascript,json setlocal smartindent shiftwidth=2 softtabstop=2 tabstop=2

" Python
au FileType python setlocal autoindent smartindent smarttab softtabstop=4 shiftwidth=4 tabstop=4
au FileType python inoremap # X#

" Go
au FileType go setlocal noexpandtab list!
au FileType go au BufWritePre <buffer> Fmt

" Markdown
au BufRead,BufNewFile *.md set filetype=markdown
