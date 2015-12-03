set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Basic stuff
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-markdown'
Plugin 'mileszs/ack.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'tpope/vim-commentary'
Plugin 'takac/vim-hardtime'
Plugin 'itchyny/lightline.vim'
Plugin 'cocopon/lightline-hybrid.vim'

" Writing
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'reedes/vim-pencil'
Plugin 'reedes/vim-wordy'

" Development
Plugin 'tpope/vim-fugitive'
Plugin 'int3/vim-extradite'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'

" Programming
Plugin 'derekwyatt/vim-scala'
Plugin 'fatih/vim-go'
Plugin 'benmills/vim-golang-alternate'

" Javascript
Plugin 'Shutnik/jshint2.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mephux/vim-jsfmt'

call vundle#end()
filetype plugin indent on

" Colors
set t_Co=256
syntax enable

let g:lightline = {}
let g:lightline.colorscheme = 'hybrid'

let g:hybrid_use_Xresources = 1
set background=dark " Dark background
colorscheme hybrid

set number         " Display line numbers
set relativenumber " Relative numbers
set noswapfile	   " Disable swap files.
set hidden    	   " Hide buffers
set nowrap    	   " Do not wrap long lines.
set ttyfast   	   " Send more characters to the screen for redraw.
set scrolloff=5    " Keep lines above and below the cursor when scrolling.
set autowrite 	   " Save on buffer switch.
set fillchars=""   " Remove the vertical split separator.

set wildmenu   " Visual auto-complete for command menu
set showmatch  " Highlight matching [{()}]
set incsearch  " Enable incremental search 
set ignorecase " Ignore case when searching.
set smartcase  " Only ignore case when search string is lowercase.

set tabstop=4
set shiftwidth=4
set softtabstop=4

set mouse=a " Enable mouse support

" Move cursor to new split
set splitbelow
set splitright

" These remove Esc delay
set ttimeout
set ttimeoutlen=50
"
" Disable preview window on autocomplete
set completeopt-=preview

let g:netrw_banner=0 
let loaded_matchparen=1
let mapleader=","

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Save buffer when leaving insert mode.
autocmd InsertLeave * update

autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown setlocal spell 
autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown :Goyo
autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown :SoftPencil

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

let g:go_fmt_command="goimports"
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', 'gocyclo']

" Toggle between test and implementation
nmap T :A<CR>

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Javascript
let g:js_fmt_fail_silently = 1
let g:js_fmt_autosave = 1

" CtrlP
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]Godeps\/_workspace'

" The default highlight colors on debian are difficult to see.
hi SpellBad cterm=underline ctermfg=15 ctermbg=1
hi Error ctermbg=1
hi Search ctermfg=8
