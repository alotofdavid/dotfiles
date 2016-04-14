
let mapleader = ","
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
Plugin 'tpope/vim-surround'
Plugin 'toyamarinyon/vim-swift'
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""" Indentation prefs, 3 spaces = tab
set expandtab
set smarttab
set tabstop=3
set shiftwidth=3

""" Searching
set incsearch
if &t_Co > 2 || has("gui_running")
   syntax enable
   set ignorecase
   set hlsearch
   " Clear highlighting
   nnoremap <silent> <leader><space> :noh<cr>
endif


""" Visual info
" Always show last status
set laststatus=2
set ruler
" Line Wraps
set showbreak=⇇
" Relative numbers and current line
set relativenumber
set nu
" Highlight current line
set cursorline
" Show current mode
set showmode
" Keep 50 lines of command line history
set history=50
" Show the cursor position all the time
set ruler
" Display incomplete commands
set showcmd

""" Usability
" Swap : and ;
nnoremap ; :
nnoremap : ;

" use mouse and scroll wheel
map <xCSI>[62~ <MouseDown>

" disable bells
set visualbell t_vb=
set noerrorbells

" More intuitive window splits
set splitbelow
set splitright
" Vert split for showbuffer
command! -nargs=1 Vsb :vert sb<f-args>

" No Ex Mode
nnoremap Q <NOP>

" Make clipboard default paste buffer
set clipboard=unnamed

" Keep all backups and swp files in .vim out of dropbox, etc
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
   set undodir=~/.vim/undo
endif

" Allow backspace in insert mode
set backspace=indent,eol,start

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" http://usevim.com/2012/10/19/vim101-set-hidden/
set hidden

" Don't jump around when going up/down lines
set nostartofline

" Better tab completion
set wildchar=<Tab> wildmenu wildmode=full

" Setup solarized colorscheme
if &t_Co > 2 || has("gui_running")
   let base16colorspace=256
   set t_Co=256
   set background=dark
   let g:solarized_visibility = "normal"
   let g:solarized_contrast = "normal"
   let g:solarized_termcolors=16
   let g:solarized_termtrans=1
   colorscheme solarized
endif

""" Plugin specific
" Tagbar
nnoremap <Leader>t :TagbarToggle<CR>

" Easymotion
"map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>s <Plug>(easymotion-s2)

" Jsx highlighting in .js files for React
let g:jsx_ext_required = 0

" Automatic commands
if has("autocmd")
	" Clear search matches when lose focus
	autocmd BufWinLeave * call clearmatches()
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
   autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
	" Reload vimrc on write
	augroup reload_vimrc
   	autocmd!
   	autocmd BufWritePost $MYVIMRC source $MYVIMRC
	augroup END
endif

imap jj <Esc>


