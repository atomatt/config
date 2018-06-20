set t_Co=256

call plug#begin('~/.config/nvim/plugged')
" chrome, etc
Plug 'edkolev/tmuxline.vim'
Plug 'itchyny/lightline.vim'
" general project/file management
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'thaerkh/vim-workspace'
" version control
Plug 'tpope/vim-fugitive'
" editing & coding
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neosnippet.vim'
Plug 'w0rp/ale'
Plug 'google/vim-jsonnet'
" color schemes
Plug 'romainl/Apprentice'
Plug 'jonathanfilip/vim-lucius'
call plug#end()

" Nice colours
colorscheme lucius
LuciusDark

" easy access to useful things
let g:mapleader = ","
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

" nicer tab management
nnoremap <silent> gnt :tabnew<CR>

" no-one likes their code wrapped, right?
set nowrap

" workspace plugin
let g:workspace_autosave = 0

" syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" deoplete plugin
let g:deoplete#enable_at_startup = 1

" neosnippets plugin
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" ale (async linter) plugin
highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:ale_sign_column_always = 1
let g:ale_sign_error = '▪'
let g:ale_sign_warning = '▫'

" go plugin
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_build_constraints = 1
"let g:go_highlight_generate_tags = 1
