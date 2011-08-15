if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

" Settings for Pathogen
filetype off                          " disable filetype use. Enabled later
call pathogen#runtime_append_all_bundles()

set nocompatible                      " don't try to be strictly vi-like
set modelines=0                       " don't use modelines (for security)
set viminfo='20,\"50                  " use a viminfo file,...
set history=50                        " limit history
set ruler                             " show the cursor position
set title                             " show title
set incsearch                         " find as entering pattern
set t_Co=256                          " uses 256 colors
set ignorecase                        " case insensitive patterns,...
set smartcase                         " when only lowercase is used
set pastetoggle=<F2>                  " F2 toggles indenting when pasting
set wildmenu                          " use command-line completion menu,...
set wildmode=longest:full             " with wildmode
set bs=indent,eol,start               " allow backspacing over everything
set autoindent                        " enable auto-indentation
set tabstop=2                         " no. of spaces for tab in file
set shiftwidth=2                      " no. of spaces for step in autoindent
set softtabstop=2                     " no. of spaces for tab when editing
set expandtab                         " expand tabs into spaces
set smarttab                          " smart tabulation and backspace
set mouse=a                           " enable mouse in all modes
set list                              " show non-print characters,...
set listchars=trail:⋅,nbsp:⋅,tab:▷⋅   " for tabs and trailing spaces
set number                            " show line numbers OR,...
"set relativenumber                    " relative line numbers (>= Vim 7.3)

filetype plugin indent on             " enable filetype use

setlocal ofu=syntaxcomplete#Complete  " enable syntax based omni completion
setlocal foldmethod=syntax            " folding uses syntax for folding
setlocal nofoldenable                 " don't start with folded lines

" Set the leader key
let mapleader = ","

" Map F1 key to Esc.
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Set the keys to turn spell checking on/off
map <F8> <Esc>:setlocal spell spelllang=en_us<CR>
map <F9> <Esc>:setlocal nospell<CR>

" Remove highlighting search results
nnoremap <leader><space> :noh <CR>

" Map w!! to write file with sudo, when forgot to open with sudo.
cmap w!! w !sudo tee % >/dev/null

" Only do this part if compiled with support for autocommands
if has("autocmd")
  augroup linux
    autocmd!
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
    " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
    autocmd BufNewFile,BufReadPre /media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp

    " Switch to working directory of the open file
    autocmd BufEnter * lcd %:p:h

    " Custom filetypes settings: Python, Shell, JSON, Vagrant, CloudFormation
    au FileType python,sh set tabstop=4 shiftwidth=4 softtabstop=4
    au BufRead,BufNewFile *.json setfiletype javascript
    au BufRead,BufNewFile Vagrantfile setfiletype ruby
    "au BufRead,BufNewFile *.template setfiletype javascript
  augroup END
endif

if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" No blinking cursor. See http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"

" View changes after the last save
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

nnoremap <leader>? :DiffSaved<cr>

" Plugin: BufExplorer - easier invoke keys
nnoremap <leader>bb :BufExplorer<cr>

" Plugin: NERDTree - keys to toggle NERDTree
nnoremap <leader>d :NERDTreeToggle<cr>
" Plugin: NERDTree - use colors, cursorline and return/enter key
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeMapActivateNode='<CR>'

" Plugin: Scratch - define invoke function
function! ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction
" Plugin: Scratch - keys to toggle Scratch buffer
map <leader>s :call ToggleScratch()<CR>

" Plugin: Rails - turn off rails related things in statusbar
let g:rails_statusline=0

" Plugin: Snipmate configuration
source ~/.vim/snippets/support_functions.vim
autocmd vimenter * call ExtractSnips("~/.vim/snippets/html", "eruby")
autocmd vimenter * call ExtractSnips("~/.vim/snippets/html", "php")

" Plugin: LaTeX - configuration (plugin not bundled in gavim2)
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" Plugin: Vala - vala support
autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala  setfiletype vala
au BufRead,BufNewFile *.vapi  setfiletype vala
let vala_comment_strings = 1
let vala_space_errors = 1
let vala_no_tab_space_error = 1

" Plugin: Ack - uncomment suitable line if configuration is necessary
"let g:ackprg="ack -H --nocolor --nogroup"         " if ack --version < 1.92
"let g:ackprg="ack-grep -H --nocolor --nogroup"    " for Debian/Ubuntu

" Plugin: keys to launch conque - terminal
nnoremap <leader>t :ConqueTermSplit bash<cr>

" Set color scheme
colorscheme railscasts_alt

" Coffe-Script
let coffee_make_options = "--bare"
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
"au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1

" Map some keys 

" Use CTRL-S for saving, also in Insert mode
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>
" bckspace in Visual mode deletes selection
vnoremap <BS> d

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x
"
" " CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-V>   "+gP
map <S-Insert>    "+gP
cmap <C-V>    <C-R>+
cmap <S-Insert>   <C-R>+

" CTRL-Z is Undo; not in cmdline though
noremap <C-Z> u
inoremap <C-Z> <C-O>u
"
" CTRL-Y is Redo (although not repeat); not in cmdline though
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w
