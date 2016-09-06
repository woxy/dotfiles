set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'scrooloose/nerdtree'
" Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Syntax Highlighting"
let &t_Co=256
syntax enable
set background=dark
colorscheme solarized

"Line Number"
set number
set relativenumber

""
set ruler laststatus=2 title hlsearch

"Show existing tab with 4 space widht
set tabstop=4

"When indenting with '>', use 4 spaces width
set shiftwidth=4

"On pressing tab, insert 4 spaces
set expandtab

"Visual autocomplete for command menu
set wildmenu

"HighLight matching {[()]}
set showmatch

"Set leader
:let mapleader = ","

"Turn off search hightlight
nnoremap <leader><space> :nohlsearch<CR>

"Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"NERDtree settings {{{
"Enable Nerdtree with CTRL + N
map <C-n> :NERDTreeToggle<CR>
"}}}
