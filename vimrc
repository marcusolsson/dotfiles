set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Basic stuff
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-markdown'
Plugin 'mileszs/ack.vim'
Plugin 'w0ng/vim-hybrid'

" Development
Plugin 'tpope/vim-fugitive'
Plugin 'int3/vim-extradite'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'

" Programming
Plugin 'fatih/vim-go'
Plugin 'benmills/vim-golang-alternate'

" Javascript
Plugin 'Shutnik/jshint2.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mephux/vim-jsfmt'

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
set number       " Display line numbers
set noswapfile   " Disable swap files.
set hidden       " Hide buffers
set incsearch    " Enable incremental search 
set nowrap       " Do not wrap long lines.
set ignorecase   " Ignore case when searching.
set smartcase    " Only ignore case when search string is lowercase.
set ttyfast      " Send more characters to the screen for redraw.
set scrolloff=5  " Keep lines above and below the cursor when scrolling.
set autowrite    " Save on buffer switch.
set fillchars="" " Remove the vertical split separator.

let loaded_matchparen=1

" These removes Esc delay
set ttimeout
set ttimeoutlen=100

" Save buffer when leaving insert mode.
autocmd InsertLeave * update

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

" Disable preview window on autocomplete
set completeopt-=preview

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Javascript
let g:syntastic_javascript_checkers=['jsxhint']
let g:syntastic_auto_loc_list = 1
let g:js_fmt_fail_silently = 1
let g:js_fmt_autosave = 1
