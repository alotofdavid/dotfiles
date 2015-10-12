
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-scripts/lid.vim'
Plugin 'lervag/vimtex'
Plugin 'derekwyatt/vim-scala'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set expandtab
set ruler


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


nnoremap ; :
nnoremap : ;

let mapleader = ","

" Tagbar
nnoremap <Leader>t :TagbarToggle<CR>

syntax enable
let base16colorspace=256
set background=dark
let g:solarized_visibility = "normal"
let g:solarized_contrast = "normal"
let g:solarized_termcolors=16
let g:solarized_termtrans=1
colorscheme solarized

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

"map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>s <Plug>(easymotion-s2)

autocmd BufWinLeave * call clearmatches()

" Reload vimrc on write
augroup reload_vimrc
   autocmd!
   autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" Line Wraps
set showbreak=⇇

" No Ex Mode
nnoremap Q <NOP>

" Clear highlighting
nnoremap <silent> <leader><space> :noh<cr>

" Vert split for showbuffer
command! -nargs=1 Vsb :vert sb<f-args>

set ignorecase
set visualbell t_vb=
set relativenumber
set nu
set cursorline
set undolevels=20
set tabstop=4
set shiftwidth=4
set smarttab

" Window splitting stuff
set splitbelow
set splitright


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" use mouse and scroll wheel
map <xCSI>[62~ <MouseDown>

