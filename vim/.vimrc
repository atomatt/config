" plugins
call plug#begin('~/.cache/vim/plugins')
Plug 'fatih/vim-go' " Go development
Plug 'junegunn/fzf', { 'do': './install --bin' } " fuzzy finder
Plug 'junegunn/fzf.vim' " fuzzy finder
Plug 'junegunn/vim-easy-align' " easy alignment
Plug 'nsf/gocode' " autocompletion daemon for Go
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " tree explorer
Plug 'sheerun/vim-polyglot' " general language syntax support
Plug 'thaerkh/vim-workspace' " session management
Plug 'tpope/vim-sensible' " good basic setup
call plug#end()

" easy access to useful things
"let g:mapleader = ","
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>g :GFiles<cr>
nnoremap <leader>h :History<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>r :Ag<cr>
nnoremap <leader>t :TagbarOpenAutoClose<cr>
nnoremap <leader>q :qall<cr>

" reload files modified outside editor
set autoread

" tabs v spaces
set tabstop=4
set shiftwidth=4
set expandtab
autocmd Filetype css,scss setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype json,jsonnet setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2

" sensible splitting
set splitbelow
set splitright

" no-one likes their code wrapped, right?
set nowrap
