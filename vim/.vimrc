call plug#begin('~/.vim/plugged')

" Basic stuff
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'w0ng/vim-hybrid'
Plug 'takac/vim-hardtime'
Plug 'rking/ag.vim'

" Development
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'

" Programming
Plug 'fatih/vim-go'
Plug 'benmills/vim-golang-alternate'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'

call plug#end()

" Colors
syntax enable

let g:hybrid_use_Xresources = 1
let g:hybrid_custom_term_colors = 1

set background=dark " Dark background
colorscheme hybrid

set nocursorcolumn " do not highlight column
set nocursorline   " do not highlight line

set number         " Display line numbers
set relativenumber " Relative numbers
set noswapfile	   " Disable swap files.
set hidden    	   " Hide buffers
set nowrap    	   " Do not wrap long lines.
set lazyredraw     " Disable excessive redrawing.
set scrolloff=5    " Keep lines above and below the cursor when scrolling.
set autowrite 	   " Save on buffer switch.
set fillchars=""   " Remove the vertical split separator.
set backspace=indent,eol,start
                   " allow backspacing over everything in insert mode 
set history=1000
set linespace=0

set wildmenu   " Visual auto-complete for command menu

set ignorecase " Ignore case when searching.
set smartcase  " Only ignore case when search string is lowercase.
set incsearch  " Enable incremental search 
set nohlsearch " Don't highlight matches

set tabstop=4
set shiftwidth=4
set softtabstop=4

set laststatus=1

set mouse=a   " Enable mouse support

" Have the indent commands re-highlight the last visual selection to make
" multiple indentations easier
vnoremap > >gv
vnoremap < <gv

" Center on search
nnoremap n nzzzv
nnoremap N Nzzzv

" These remove Esc delay
set ttimeout
set ttimeoutlen=50

" Disable preview window on autocomplete
set completeopt-=preview

let loaded_matchparen = 1 
let g:netrw_banner=0 

let mapleader=","

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" System clipboard
nnoremap <Leader>p "+]p
nnoremap <Leader>P "+]P
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d

map <leader>e :Explore<cr> 

" Spelling for markdown
autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown setlocal spell 

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

let g:go_metalinter_enabled=['vet', 'golint', 'errcheck', 'gocyclo']
let g:go_metalinter_autosave=1

" Toggle between test and implementation
nmap T :A<CR>

let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
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

" CtrlP
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]Godeps\/_workspace'

nmap <C-b> :CtrlPBuffer<CR>

" The default highlight colors on debian are difficult to see.
hi SpellBad cterm=underline ctermfg=15 ctermbg=1
hi Error ctermbg=1
hi Search ctermfg=8

" Javascript
autocmd FileType javascript setlocal sw=2
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
