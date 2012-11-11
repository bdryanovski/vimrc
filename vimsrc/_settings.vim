" -----------------------------------------------------------------------------
" Settings
" -----------------------------------------------------------------------------
set encoding=utf-8
set fileencodings=utf-8               " encoding always must be utf-8
set fileformats=unix,dos              " Setting file format try first unix
set nocompatible                      " don't try to be strictly vi-like
set modelines=1                       " for now use it //don't use modelines (for security) 
set viminfo='20,\"50                  " use a viminfo file,...
set history=1500                      " limit history
set ruler                             " show the cursor position
set title                             " show title
set incsearch                         " find as entering pattern
set t_Co=256                          " uses 256 colors
set ignorecase                        " case insensitive patterns,..
set cursorline
set smartcase                         " when only lowercase is used
set wildmenu                          " use command-line completion menu,...
set wildmode=longest:full             " with wildmode
set bs=indent,eol,start               " allow backspacing over everything
set autoindent                        " enable auto-indentation
set si                                " enable smartindent (local to buffer)
set ts=2                              " tabs are 2 space
set tabstop=2                         " no. of spaces for tab in file
set shiftwidth=2                      " no. of spaces for step in autoindent
set softtabstop=2                     " no. of spaces for tab when editing
set expandtab                         " expand tabs into spaces
set smarttab                          " smart tabulation and backspace
set laststatus=2                      " always show statusline
set mouse=a                           " enable mouse in all modes
set number                            " show line numbers OR,...
set showmode                          " always show what mode we'r
set nowrap                            " don't wrap lines
set autoread                          " auto reload file on change.
set visualbell                        " No sounds
set autochdir                         " Change working dir to the open file
"set list                              " show non-print characters,...
"set listchars=trail:⋅,nbsp:⋅,tab:▷⋅   " for tabs and trailing spaces
"set relativenumber                    " relative line numbers (>= Vim 7.3)

" -----------------------------------------------------------------------------
" Settings for Pathogen
" -----------------------------------------------------------------------------
"filetype off                          " disable filetype use. Enabled later
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

" -----------------------------------------------------------------------------
" Settings for Vundle
" -----------------------------------------------------------------------------

filetype off

" Load the Vundle
set rtp+=$VIMHOME/vundle.git/
call vundle#rc()

" Global packages.

  Bundle 'gmarik/vundle'

  " Extend VIM
  Bundle 'scrooloose/nerdtree'
  Bundle 'Shougo/neocomplcache'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'msanders/snipmate.vim'
  Bundle 'widox/vim-buffer-explorer-plugin'
  Bundle 'tsaleh/vim-matchit'
  Bundle 'xolox/vim-session'
  Bundle 'vim-scripts/scratch.vim'
  Bundle 'sickill/vim-pasta'
  Bundle 'nathanaelkane/vim-indent-guides'
  Bundle 'godlygeek/tabular'

  " Extra features
  Bundle 'mattn/zencoding-vim'
  Bundle 'gmarik/github-search.vim'
  Bundle 'vim-scripts/TwitVim'
  Bundle 'scrooloose/syntastic'
  Bundle 'Rykka/colorv.vim'
  Bundle 'tpope/vim-surround.git'

  " Control Version Systems
  Bundle 'tpope/vim-fugitive'
  Bundle 'vim-scripts/vcscommand.vim'

  " Syntax Highlighting and Language specifically
  Bundle 'duwanis/tomdoc.vim'
  Bundle 'tpope/vim-markdown'
  Bundle 'groenewege/vim-less'
  Bundle 'vim-ruby/vim-ruby'
  Bundle 'digitaltoad/vim-jade'
  Bundle 'jelera/vim-javascript-syntax'
  Bundle 'kchmck/vim-coffee-script'
  Bundle 'tangledhelix/vim-octopress'
  Bundle 'tpope/vim-rails'
  Bundle 'aaronj1335/underscore-templates.vim'
  Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
  Bundle 'itspriddle/vim-jquery'
  Bundle 'leshill/vim-json'
  Bundle 'tpope/vim-rake'
  Bundle 'jc00ke/vim-tomdoc'
  Bundle 'tclem/vim-arduino'
  Bundle 'henrik/vim-ruby-runner'

  " Themes and UI
  Bundle 'Lokaltog/vim-powerline'
  Bundle 'altercation/vim-colors-solarized'
  Bundle 'noahfrederick/Hemisu'
  Bundle 'sjl/badwolf'

  Bundle 'kana/vim-smartinput'
  Bundle 'vim-scripts/HTML-AutoCloseTag'
  Bundle 'walm/jshint.vim'
  Bundle 'mihai-rotaru/vimwiki'
  Bundle 'wojtekmach/vim-rename'
  Bundle 'hallison/vim-ruby-sinatra'

if has("unix")
    Bundle 'mutewinter/swap-parameters.git'

    " ctags 
    Bundle 'vim-scripts/taglist.vim'
    Bundle 'xolox/vim-easytags'
    Bundle 'mbadran/headlights'

    " Linux me will use Command-T
    Bundle 'wincent/Command-T'
endif 

if has("win32") || has("win64")
    Bundle 'kien/ctrlp.vim'
endif

" -----------------------------------------------------------------------------

filetype plugin indent on             " enable filetype use
setlocal ofu=syntaxcomplete#Complete  " enable syntax based omni completion

" -----------------------------------------------------------------------------
" Hacks
" -----------------------------------------------------------------------------

" This is a hack for the nasty screen flash/blink
set vb t_vb=

" -----------------------------------------------------------------------------
" Set the leader key
" -----------------------------------------------------------------------------
let mapleader = ","

" -----------------------------------------------------------------------------
" In VIEW mode.
" -----------------------------------------------------------------------------
set showmatch             " show matching brackets/parenthesis
set mat=5                 " Blink 5 second 

" -----------------------------------------------------------------------------
"  ctags
" -----------------------------------------------------------------------------
"set tags +=~/.vim/tags

" -----------------------------------------------------------------------------
" Backup and Files
" -----------------------------------------------------------------------------
"set backup                     " enable creation of backup files
"set backupdir=~/.vim/backups   " Where to store the backups
"set directory=~/.vim/tmp       " Temporary files will go
set undolevels=1500             " maximum number of changes that can be undone
set undoreload=15000            " maximum lines to save for undo on buffer reload.
" Turn off swap files
"set noswapfile
"set nobackup
"set nowb

" -----------------------------------------------------------------------------
" Status line definition
" -----------------------------------------------------------------------------
set statusline=
set statusline+=%<%f\ %h%m%r             " filename and flags
set statusline+=%{fugitive#statusline()} " git info
set statusline+=%=                       " alignment separator
set statusline+=[%{&ft}]                 " filetype
set statusline+=%-14.([%l/%L],%c%V%)     " cursor info

"
" Set color scheme
"
syntax enable
set background=dark
" colorscheme molokai "railscasts_alt
colorscheme solarized

" -----------------------------------------------------------------------------
" Windows settings
" -----------------------------------------------------------------------------

set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

" -----------------------------------------------------------------------------
" VIM UI
" -----------------------------------------------------------------------------
set tabpagemax=15                       " show only 15 tabs.
set guitablabel=%!expand(\"\%:t\")i

" -----------------------------------------------------------------------------
" Code xx column line - very useful I think?
" -----------------------------------------------------------------------------
"set cc=100
"highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
"match OverLength /\%>100v.\+/

if exists('+colorcolumn')
  set colorcolumn=100
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
endif


" -----------------------------------------------------------------------------
" Autogenerate the docs
" -----------------------------------------------------------------------------
autocmd BufWritePost $VIMHOME/doc/* :helptags $VIMHOME/doc

" -----------------------------------------------------------------------------
" Automatically reload vimrc when it's saved
" -----------------------------------------------------------------------------
au BufWritePost vimrc.vim so $VIMHOME/vimrc.vim


" -----------------------------------------------------------------------------
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
" -----------------------------------------------------------------------------
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

"
" No blinking cursor. See http://www.linuxpowertop.org/known.php
"
let &guicursor = &guicursor . ",a:blinkon0"
set gcr=a:blinkon0

" -----------------------------------------------------------------------------
" View changes after the last save
" -----------------------------------------------------------------------------
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

nnoremap <leader>? :DiffSaved<cr>

" -----------------------------------------------------------------------------
"  Code folding
" -----------------------------------------------------------------------------
" set nofoldenable            "dont fold by default
set foldmethod=syntax         " folding based on the indent
set foldnestmax=10            " deepest fold 
set foldlevel=1
set nofoldenable              " don't start with folded lines

" -----------------------------------------------------------------------------
" Only do this part if compiled with support for autocommands
" -----------------------------------------------------------------------------

source $VIMHOME/vimsrc/_autocmd.vim
