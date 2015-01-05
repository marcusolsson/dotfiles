set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'base16-vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'kien/ctrlp.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'edkolev/promptline.vim'

call vundle#end()
filetype plugin indent on

au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>c <Plug>(go-coverage)

syntax enable
set background=dark
colorscheme hybrid
let g:hybrid_use_Xresources = 1

let g:promptline_preset = {
        \'a' : [ promptline#slices#host() ],
        \'b' : [ promptline#slices#user() ],
        \'c' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#vcs_branch() ],
        \'warn' : [ promptline#slices#last_exit_code() ]}

set number
set hlsearch

set guioptions-=T
set guifont=Sauce\ Code\ Powerline\ 10

let g:airline_powerline_fonts = 1
set laststatus=2

map <C-s> :w<kEnter>

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
