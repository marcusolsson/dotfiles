call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'
Plug 'fatih/vim-go'
Plug 'fatih/vim-hclfmt'
Plug 'nvie/vim-flake8'
Plug 'ambv/black'
Plug 'scrooloose/nerdtree'
Plug 'hashivim/vim-hashicorp-tools'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'ekalinin/Dockerfile.vim', {'for' : 'Dockerfile'}
Plug 'elzr/vim-json', {'for' : 'json'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'zchee/deoplete-go', { 'do': 'make'}

call plug#end()

colorscheme nord

set nocompatible
filetype off
filetype plugin indent on

set autoread
set autowrite
set lazyredraw
set updatetime=100
set hidden 
set nowrap
set autoindent
set expandtab
set tabstop=2
set incsearch  
set nohlsearch 
set ignorecase 
set smartcase  
set noswapfile 
set nobackup   
set number
set completeopt-=preview
set showmatch
set splitright 
set splitbelow 

imap jk <Esc>

map q: :q

let mapleader = ","

" Search
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" Python
autocmd BufWritePost *.py call Flake8()
autocmd BufWritePre *.py execute ':Black'

" Go
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"

nmap T :GoAlternate<CR>

nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 

" Completion
let g:deoplete#enable_at_startup = 1
let g:SuperTabDefaultCompletionType = "context"

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"  
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" NERDTree
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeShowHidden=1
