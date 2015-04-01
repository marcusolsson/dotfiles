set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-markdown'
Plugin 'junegunn/goyo.vim'
Plugin 'scrooloose/nerdtree'

" Color scheme
Plugin 'w0ng/vim-hybrid'

" Programming
Plugin 'Raimondi/delimitMate'
Plugin 'fatih/vim-go'
Plugin 'benmills/vim-golang-alternate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'Shutnik/jshint2.vim'
Plugin 'mileszs/ack.vim'

call vundle#end()
filetype plugin indent on

let mapleader=","

nmap <leader>n :NERDTreeToggle<CR>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

set t_Co=256

syntax enable
colorscheme hybrid
let g:hybrid_use_Xresources = 1

set background=dark " Dark background
set number " Display line numbers
set noswapfile
set hidden " Hide buffers
set incsearch
set nowrap
set ignorecase
set smartcase
set lazyredraw
set ttyfast
set scrolloff=5
set ruler
set autoread

set ttimeout
set ttimeoutlen=100

" Go to home and end using capitalized directions
noremap H ^
noremap L $

" Learn Vim!
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Go programming
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go au BufWritePost <buffer> execute 'GoLint' | cwindow

let g:go_fmt_command="goimports"

" Toggle between test and implementation
nmap T :A<CR>

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" JavaScript programming
au FileType javascript nnoremap <silent><F1> ::%!js-beautify -j -q -B -f -<CR>
au FileType javascript nnoremap <silent><F2> :JSHint<CR>

" Disable preview window on autocomplete
set completeopt-=preview

" Snippets
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

