"------------Platform Settings----------------
 " If running on Windows platform.
 if has('win32')
 	set backupdir=$HOME/vimfiles/backup,.
 	set directory=$HOME/vimfiles/temp//,.
 	set undodir=$HOME/vimfiles/undo,.
 	set guifont=InputMonoNarrow:h12
 " If running on linux platform
 else
  "let g:python3_host_prog = expand('~/miniconda3/envs/neovim/bin/python')
 	set backupdir=$HOME/vimfiles/backup,.
 	set directory=$HOME/vimfiles/temp//,.
 	set undodir=$HOME/vimfiles/undo,.
 	"set guifont=DejaVuSansMono\ 14
 	set guifont=HackNerdFontMono\ 12
 endif
"------------Platform Settings----------------

"------------Plugins----------------
call plug#begin('~/vimfiles/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'cjrh/vim-conda'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/syntastic'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi'
" Plug 'numirias/semshi', {'do': ':UpdazenburnteRemotePlugins'}
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
Plug 'vimwiki/vimwiki' , { 'branch': 'dev' }
call plug#end()
"------------Plugins----------------

"------------Plugin Settings----------------
"let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_pylint_post_args="--max-line-length=90"
let g:syntastic_python_flake8_post_args="--max-line-length=90"
"let g:deoplete#enable_at_startup = 1
"let g:python_host_prog = expand('~/miniconda3/envs/py/bin/python')
let g:jedi#completions_enabled = 0
"------------Plugin Settings----------------

"------------General Settings----------------
 if has('gui_running')
  set background=dark
  colorscheme zenburn
  " no bell
  autocmd GUIEnter * set vb t_vb=
 else
  "colorscheme molokai"
  set background=dark
  colorscheme gruvbox
 endif
"let g:airline_theme='zenburn'
let g:airline_theme='gruvbox'

"omnicomplete
"autocmd FileType python set omnifunc=pythoncomplete#Complete

" misc
set nocompatible
filetype plugin on
syntax on
set omnifunc=syntaxcomplete#Complete
set noswapfile
set nu
set clipboard=unnamed
syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
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

"------------Vimwiki Settings----------------
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md',
                      \ 'auto_toc': 1,
                      \ 'list_margin': 0,
                      \ 'auto_tags': 1,
                      \ 'auto_diary_index': 1}]
" let wiki_1 = {}
" let wiki_1.path ='~/test_1/'
" let wiki_1.syntax = 'markdown'
" let wiki_1.ext = '.md'
" 
" let wiki_2 = {}
" let wiki_2.path ='~/test_2/'
" " let wiki_2.index= 'main'
" let wiki_2.syntax = 'markdown'
" let wiki_2.ext = '.md'
" 
" let g:vimwiki_list = [wiki_1, wiki_2]
let g:vimwiki_global_ext = 0
let g:vimwiki_markdown_link_ext = 1
"------------Vimwiki Settings----------------

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
"------------C/C++ files----------------

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
"------------Python files----------------

"------------Python 3----------------
"let g:pymode_python = 'python3'
"let g:jedi#force_py_verion = 3
"------------Python 3----------------

"------------Key Mappings----------------
let mapleader = ","
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
map <leader>ss :setlocal spell!<CR>
"map <F2> :NERDTreeToggle<CR>
nnoremap <space> za
"------------Key Mappings----------------
