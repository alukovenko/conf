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
" Bundle 'tomasr/molokai'
" Plugin 'flazz/vim-colorschemes'
Plugin 'mojo.vim'
" Plugin 'L9'
" Plugin 'FuzzyFinder'
Plugin 'The-NERD-tree'
Plugin 'ctrlp.vim'
" https://github.com/othree/javascript-libraries-syntax.vim
" Plugin 'othree/javascript-libraries-syntax.vim'
" Bundle 'Lokaltog/vim-powerline'

" All of your Plugins must be added before the following line
if !empty(glob("~/.vimrc_local_plugins"))
    source ~/.vimrc_local_plugins
end

call vundle#end()            " required

set laststatus=2
" set encoding=utf-8
" set t_Co=256
" let g:Powerline_symbols = 'fancy'
" fuzzy finder
"nmap ,f :FufFileWithCurrentBufferDir<CR>
"nmap ,b :FufBuffer<CR>
"nmap ,t :FufTaggedFile<CR>
nnoremap <C-e> :NERDTreeToggle<CR>

nnoremap <C-n> :tabnew<CR>
nnoremap <C-l> gt
nnoremap <C-h> gT

set tags=~/tags

filetype plugin indent on    " required

" https://github.com/ik5/dotvim/blob/master/vimrc

set background=dark
if has("gui_running")
    set guifont=Monaco\ 9,Droid\ Sans\ Mono\ 10,Andale\ Mono\ Regular\ 10,\ Liberation\ Mono\ 9
    set guioptions-=T   " Toolbars off (icons on top of the screen)
else
    set t_Co=256
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
endif

let g:solarized_contrast="high"
let g:solarized_visibility="high"

colorscheme molokai
" colorscheme desert
" colorscheme monokain
let g:molokai_original = 1
let g:rehash256 = 1

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

map <F9> :CtrlPTag<CR>
map <F10> :!cd ~; ctags -R --languages=perl<CR> 

" tab
set shiftwidth=4 
set softtabstop=4
set tabstop=4

" search
set hlsearch
set incsearch
set smartcase
set ignorecase

" code folding
set foldmethod=indent
set foldlevelstart=99
set foldcolumn=2

" list chars
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>

set scrolloff=3
set pastetoggle=<F12>

set fileencodings=utf-8,cp1251,koi8-r
set termencoding=utf8
set fileencodings=utf-8,cp1251,koi8-r

set expandtab
set smarttab
 
if has("autocmd")
    filetype on

    autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
endif

au BufNewFile,BufRead *.gradle setf groovy

if !empty(glob("~/.vimrc_local"))
    source ~/.vimrc_local
end

