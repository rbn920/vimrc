set nocompatible              " be iMproved, required
filetype off                  " required

" If running on Windows platform.
if has('win32')
	set backupdir=$HOME/vimfiles/backup,.
	set directory=$HOME/vimfiles/temp//,.
	set undodir=$HOME/vimfiles/undo,.
	set rtp+=$HOME/vimfiles/bundle/Vundle.vim
	call vundle#begin('$HOME/vimfiles/plugins/')
	set guifont=Input:h12
" If running on linux plarform
else
	set backupdir=$HOME/.vim/backup,.
	set directory=$HOME/.vim/temp//,.
	set undodir=$HOME/.vim/undo,.
	set rtp+=$HOME/.vim/bundle/Vundle.vim
	call vundle#begin('$HOME/.vim/plugins/')
	set guifont=Input\ Mono\ Narrow\ Light\ Semi-Condensed\ 12
endif

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"------------Plugins Start---------------

" git interface
Plugin 'tpope/vim-fugitive'

" filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim' 

" html
"Plugin 'isnowfy/python-vim-instant-markdown'
"Plugin 'jtratner/vim-flavored-markdown'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'nelstrom/vim-markdown-preview'

" python sytax checker
Plugin 'nvie/vim-flake8'
"Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'

" auto-completion stuff
"Plugin 'klen/python-mode'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'klen/rope-vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
"
" code folding
Plugin 'tmhedberg/SimpylFold'

" colors
Plugin 'flazz/vim-colorschemes'

" airline
"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" surround
Plugin 'tpope/vim-surround'

" Conda - manage python env
"Plugin 'cjrh/vim-conda'

"------------Plugins End---------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"------------General Settings----------------
" colors theme
if has('gui_running')
 set background=dark
 colorscheme zenburn
else
 colorscheme molokai
endif
"toggle light and dark background
"call togglebg#map("<F5>")

"omnicomplete
"autocmd FileType python set omnifunc=pythoncomplete#Complete

" misc
set noswapfile
set nu
set clipboard=unnamed
syntax on
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set encoding=utf-8
set backspace=indent,eol,start " make backspaces more powerfull
set cursorline          "Highlights current line
set laststatus=2
set guioptions-=T       "Removes top toolbar
set guioptions-=r       "Removes right hand scroll bar
set go-=L               "Removes left hand scroll bar
set relativenumber	"Relative line numbers
highlight BadWhitespace ctermbg=red guibg=red
let g:airline_powerline_fonts = 1
"------------General Settings----------------

"------------C/C++ files----------------
au BufRead,BufNewFile *.c,*.cc,*.h set textwidth=120
au BufRead,BufNewFile *.c,*.cc,*.h set colorcolumn=120
au BufRead,BufNewFile *.c,*.cc,*.h set expandtab
au BufRead,BufNewFile *.c,*.cc,*.h set tabstop=4
au BufRead,BufNewFile *.c,*.cc,*.h set softtabstop=4
au BufRead,BufNewFile *.c,*.cc,*.h set shiftwidth=4
au BufRead,BufNewFile *.c,*.cc,*.h set autoindent
au BufRead,BufNewFile *.c,*.cc,*.h match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.c,*.cc,*.h match BadWhitespace /\s\+$/
au         BufNewFile *.c,*.cc,*.h set fileformat=unix
au BufRead,BufNewFile *.c,*.cc,*.h let b:comment_leader = '//'
"------------Python files----------------

"------------Webdev files----------------
au BufRead,BufNewFile *.html,*.js,*.css set filetype=xml
au BufRead,BufNewFile *.html,*.js,*.css set noexpandtab
au BufRead,BufNewFile *.html,*.js,*.css set tabstop=2
au BufRead,BufNewFile *.html,*.js,*.css set softtabstop=2
au BufRead,BufNewFile *.html,*.js,*.css set shiftwidth=2
au BufRead,BufNewFile *.html,*.js,*.css set autoindent
au BufRead,BufNewFile *.html,*.js,*.css match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.html,*.js,*.css match BadWhitespace /\s\+$/
au         BufNewFile *.html,*.js,*.css set fileformat=unix
au BufRead,BufNewFile *.html,*.js,*.css let b:comment_leader = '<!--'
"------------Webdev files----------------

"------------Python files----------------
au BufRead,BufNewFile *.py,*.pyw set textwidth=90
au BufRead,BufNewFile *.py,*.pyw set colorcolumn=90
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set tabstop=4
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set autoindent
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/
au         BufNewFile *.py,*.pyw set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw let b:comment_leader = '#'
au BufRead,BufNewFile *.py,*.pyw let g:SimpylFold_docstring_preview = 1
au BufRead,BufNewFile *.py,*.pyw let python_highlight_all=1
"let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_pylint_post_args="--max-line-length=90"
let g:syntastic_python_flake8_post_args="--max-line-length=90"
"------------Python files----------------

"------------Python 3----------------
let g:pymode_python = 'python3'
let g:jedi#force_py_verion = 3
"------------Python 3----------------

"------------Key Mappings----------------
let mapleader = ","
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
map <leader>ss :setlocal spell!<CR>
nnoremap <space> za
"------------Key Mappings----------------
