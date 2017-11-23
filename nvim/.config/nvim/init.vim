set t_Co=256

call plug#begin('~/.config/nvim/plugged')
" chrome, etc
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
" general file management
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'thaerkh/vim-workspace'
" version control
Plug 'tpope/vim-fugitive'
" coding
Plug 'SirVer/ultisnips'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim'
" colorschemes
Plug 'tomasiser/vim-code-dark'
Plug 'romainl/Apprentice'
call plug#end()

colorscheme apprentice

let g:mapleader = ","
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>g :GFiles<cr>
nnoremap <leader>h :History<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>r :Ag<cr>
nnoremap <leader>q :qall<cr>

" workspace overrides
let g:workspace_autosave = 0

" sensible splitting
set splitbelow
set splitright

" nicer edit tab management
nnoremap <silent> gnt :tabnew<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:deoplete#enable_at_startup = 1

" real tabs by default
set tabstop=4
set shiftwidth=4
set noexpandtab

autocmd Filetype css,scss setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2
