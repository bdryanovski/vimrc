" -----------------------------------------------------------------------------
" Settings
" -----------------------------------------------------------------------------
set fileencodings=utf-8               " encoding always must be utf-8
set fileformats=unix,dos              " Setting file format try first unix
set nocompatible                      " don't try to be strictly vi-like
set modelines=0                       " don't use modelines (for security)
set viminfo='20,\"50                  " use a viminfo file,...
set history=1500                      " limit history
set ruler                             " show the cursor position
set title                             " show title
set incsearch                         " find as entering pattern
set t_Co=256                          " uses 256 colors
set ignorecase                        " case insensitive patterns,..
set cursorline
set smartcase                         " when only lowercase is used
" TODO: do I really need that ?
"set pastetoggle=<F2>                 " F2 toggles indenting when pasting
set wildmenu                          " use command-line completion menu,...
set wildmode=longest:full             " with wildmode
set bs=indent,eol,start               " allow backspacing over everything
set autoindent                        " enable auto-indentation
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
"set list                              " show non-print characters,...
"set listchars=trail:⋅,nbsp:⋅,tab:▷⋅   " for tabs and trailing spaces
"set relativenumber                    " relative line numbers (>= Vim 7.3)

filetype plugin indent on             " enable filetype use
setlocal ofu=syntaxcomplete#Complete  " enable syntax based omni completion

" -----------------------------------------------------------------------------
" Set the leader key
" -----------------------------------------------------------------------------
let mapleader = ","

" -----------------------------------------------------------------------------
" In VIEW mode.
" -----------------------------------------------------------------------------
set showmatch 
set mat=5

" -----------------------------------------------------------------------------
" Backup and Files
" -----------------------------------------------------------------------------
"set backup                     " enable creation of backup files
"set backupdir=~/.vim/backups   " Where to store the backups
"set directory=~/.vim/tmp       " Temporary files will go

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
colorscheme molokai "railscasts_alt

" -----------------------------------------------------------------------------
" Code xx column line - very useful I think?
" -----------------------------------------------------------------------------
"set cc=100
"highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
"match OverLength /\%>100v.\+/

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
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
" Settings for Pathogen
" -----------------------------------------------------------------------------
filetype off                          " disable filetype use. Enabled later
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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
set nofoldenable                 " don't start with folded lines


" -----------------------------------------------------------------------------
" Add the closing brace only at the end of the line
" -----------------------------------------------------------------------------
function! ConditionalPairMap(open, close)
  let line = getline('.')
  let col = col('.')
  if col < col('$') || stridx(line, a:close, col + 1) != -1
    return a:open
  else
    return a:open . a:close . repeat("\<left>", len(a:close))
  endif
endf

inoremap <expr> ( ConditionalPairMap('(', ')')
inoremap <expr> { ConditionalPairMap('{', '}')
inoremap <expr> [ ConditionalPairMap('[', ']')

" -----------------------------------------------------------------------------
" Only do this part if compiled with support for autocommands
" -----------------------------------------------------------------------------
if has("autocmd")
  augroup linux

    " Clear all custom autocommands
    autocmd!

    " In text files, always limit the width of text to 98 characters
    autocmd FileType text set tw=98

    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif

    " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
    autocmd BufNewFile,BufReadPre /media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp

    " Switch to working directory of the open file
    autocmd BufEnter * lcd %:p:h

    " Setting compilers
    autocmd BufEnter *.php compiler php
    autocmd BufEnter *.c   compiler gcc
    autocmd BufEnter *.cpp compiler gcc
    autocmd BufEnter *.rb  compiler ruby

    " If editing Gemfile, then run it after save
    autocmd BufEnter Gemfile RunCommand !bundle install

    " Syntax highlight for files that don't end with *.rb extension - Adding
    " syntax = ruby  
    au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby

    autocmd BufEnter *access.log* set filetype=httplog
    autocmd BufEnter httpd*.conf  set filetype=apache
    autocmd BufRead *.jhtml       set filetype=jhtml

    " Maximise on open on Windows
    if has('win32')
      autocmd GUIEnter * simalt ~x
    endif

    " Custom filetypes settings: Python, Shell, JSON, Vagrant, CloudFormation
    au FileType python,sh set tabstop=4 shiftwidth=4 softtabstop=4
    au BufRead,BufNewFile *.json setfiletype javascript
    au BufRead,BufNewFile Vagrantfile setfiletype ruby
    "au BufRead,BufNewFile *.template setfiletype javascript
  augroup END
endif
