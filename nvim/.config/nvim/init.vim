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
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

colorscheme nord

set nocompatible
filetype off
filetype plugin indent on

set autoindent
set autoread
set autowrite
set completeopt-=preview
set expandtab
set hidden
set ignorecase
set incsearch
set lazyredraw
set nobackup
set nocursorcolumn
set nocursorline
set nohlsearch
set noswapfile
set nowrap
set number
set showmatch
set smartcase
set splitbelow
set splitright
set tabstop=2
set updatetime=100

imap jk <Esc>

nnoremap n nzzzv
nnoremap N Nzzzv

map q: :q

let mapleader = ","

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
autocmd BufNewFile,BufRead *.json setlocal expandtab ts=2 sw=2

" Search
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" Python
autocmd BufWritePost *.py call Flake8()
autocmd BufWritePre *.py execute ":Black"

" Go
let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"
let g:go_def_mode = "gopls"
let g:go_info_mode = "gopls"
let g:go_metalinter_enabled = ["vet", "golint"]

nmap gt :GoDefType<CR>
nmap T :GoAlternate<CR>

nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

augroup go
  autocmd!

  autocmd FileType go nmap <silent> <Leader>i <Plug>(go-info)
  autocmd FileType go nmap <silent> <Leader>l <Plug>(go-metalinter)
  autocmd FileType go nmap <silent> <leader>b  <Plug>(go-build)
  autocmd FileType go nmap <silent> <leader>t  <Plug>(go-test)
  autocmd FileType go nmap <silent> <Leader>c <Plug>(go-coverage-toggle)
augroup END

" Whitespace
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm=0

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
