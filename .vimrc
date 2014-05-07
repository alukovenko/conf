" Installing Vundle:
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tComment'
Plugin 'ack.vim'
Plugin 'molokai'
Plugin 'mojo.vim'
" Plugin 'L9'
" Plugin 'FuzzyFinder'
Plugin 'The-NERD-tree'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" fuzzy finder
"nmap ,f :FufFileWithCurrentBufferDir<CR>
"nmap ,b :FufBuffer<CR>
"nmap ,t :FufTaggedFile<CR>
nnoremap <C-e> :NERDTreeToggle<CR>

filetype plugin indent on    " required

colorscheme molokai
" colorscheme desert
let g:molokai_original = 1
set background=dark

" https://github.com/ik5/dotvim/blob/master/vimrc

if has("gui_running")
    set guifont=Monaco\ 9,Droid\ Sans\ Mono\ 10,Andale\ Mono\ Regular\ 10,\ Liberation\ Mono\ 9
    set guioptions-=T   " Toolbars off (icons on top of the screen)
else
    set t_Co=256
    "let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    let g:rehash256 = 1
endif

let g:solarized_contrast="high"
let g:solarized_visibility="high"

" statusline
set statusline=%<%f\                     " Filename
set statusline+=%w%h%m%r                 " Options
" set statusline+=%{fugitive#statusline()} " Git Hotness
set statusline+=\ [%{&ff}/%Y]            " filetype
set statusline+=\ [%{getcwd()}]          " current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

set number
set numberwidth=5

set cursorline

" set ruler
set history=500

set wildmenu                             " show list instead of just completing
set wildmode=list:longest,full           " command <Tab> completion, list matches, then longest common part, then all.
set completeopt=menu    

syntax on
set nobackup
set swapsync=
map <F8> :e ++enc=utf-8 
map <S-F8> :e ++enc=cp1251

" tab
set expandtab 
set shiftwidth=4 
set softtabstop=4
set tabstop=4
set smarttab

" search
set hlsearch
set incsearch
set smartcase
set ignorecase

" code folding
set foldmethod=indent
set foldlevelstart=1
set foldcolumn=4

set scrolloff=3
set pastetoggle=<F12>

set fileencodings=utf-8,cp1251,koi8-r
set termencoding=utf8
set fileencodings=utf-8,cp1251,koi8-r

