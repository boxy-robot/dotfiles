" Vundle Stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'chriskempson/base16-vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'kien/ctrlp.vim'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'

call vundle#end()            " required


" I don't know what this stuff is
filetype plugin indent on
set nocompatible
filetype off

" Editor Stuff
let mapleader=","
syntax on
set background=dark
colorscheme base16-bright
set guifont=Monaco\ for\ Powerline:h12
set nowrap
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set nu
set ruler
set showcmd
set showmode
set mouse=a
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set hidden
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup
set noswapfile

" Easy window navigation
map <C-H> <C-w>h
map <C-J> <C-w>j
map <C-K> <C-w>k
map <C-L> <C-w>l
map <C-N> <C-w>w

" Clear highlights after searching with ,/
nmap <silent> ,/ :nohlsearch<CR>

" Forgot to use sudo? use :w!!
cmap w!! w !sudo tee % >/dev/null

" Python and Django
let python_highlight_all=1
au BufNewFile,BufRead *.html setlocal filetype=htmldjango
autocmd FileType python map <buffer> <C-t> :call Flake8()<CR>

let &colorcolumn="80,".join(range(80,999),",")
highlight ColorColumn ctermbg=234

" Python Mode Stuff
let g:pymode_folding = 0

" Markdown
let g:vim_markdown_folding_disabled=1

" Whitespace
set list
set listchars=tab:>·,extends:·,precedes:·,eol:·
autocmd BufWritePre * :%s/\s\+$//e
hi NonText ctermfg=gray guifg=gray

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\.DS_Store$']
let NERDTreeShowHidden=1
nmap <silent> <C-I> :NERDTreeToggle<CR>

" Powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'

" Ctrl-P
map <Leader>t :CtrlP<CR>
