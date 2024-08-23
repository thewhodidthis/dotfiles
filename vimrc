" be iMproved
set nocompatible

" disable coloring altogether if chosen scheme unavailable
try
  colorscheme robert
catch
  set t_Co=0 | hi LineNr term=NONE
endtry

" comes in handy when e.g. $LANG is empty certain characters would go unrecognized
set encoding=utf-8

" indent based on previous line
set autoindent
set smartindent
set cindent

" reload changes from disk
set autoread

" fix backspace
set backspace=indent,eol,start

" http://vim.wikia.com/wiki/Mac_OS_X_clipboard_sharing
set clipboard=unnamed

" tabs be tabs
set copyindent

" fix insert mode <Tab> spaces
set expandtab

" default file types
set fileformats=unix,mac,dos

" hide buffers instead of closing them
set hidden

" up history levels from 50
set history=1000

" highlight all matching search terms
set hlsearch

" show search matches as you type
set incsearch

" defer redrawing the screen while stuff like macros is running
set lazyredraw

" show whitespace
set list

" use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" enable mouse use in all modes
set mouse+=a

" always show line numbers
set number

" adjust line numbers based on cursor position
set relativenumber

" track cursor position
set ruler

" up <Tab> spaces from 0
set softtabstop=2

" adjust reindent spaces
set shiftwidth=2

" use multiples of shift width
set shiftround

" statusline reflects current command
set showcmd

" highlight matching brackets
set showmatch

" ignore case if search pattern is all lowercase
set smartcase

" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" allow highlighting for extremely long lines
set synmaxcol=10000

" down tab spaces from 8
set tabstop=2

" override terminal tab title
set title

" scroll faster
if !has('nvim')
  set ttyscroll=3
endif

" up undo history
set undolevels=1000

" show completions in status line
set wildmenu

" make movement keys wrap to the next/previous line
set whichwrap=b,s,h,l,<,>,[,]

" use new regular expression engine
set re=0

" show match count
set shortmess=""

" allow highlighting regardless of color scheme
syntax enable

" enable file type detection and indentation
filetype plugin indent on

" fix coloring
autocmd BufNewFile,BufRead *.cjs set filetype=javascript
autocmd BufNewFile,BufRead *.mjs set filetype=javascript
autocmd BufNewFile,BufRead *.md set filetype=markdown

" fix for crontab
autocmd FileType crontab setlocal nowritebackup

" rebalance windows on resize
autocmd VimResized * :wincmd=

" make navigating splits easier
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" turn off search highlight easily
nnoremap <leader><space> :nohlsearch<CR>

" for Go
autocmd FileType go nnoremap <space>, :!goimports -w %<CR>
" autocmd BufWritePost,FileWritePost *.go !goimports -w %

" stay in visual mode after shift indenting
vnoremap < <gv
vnoremap > >gv
