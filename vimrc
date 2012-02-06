if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

" ------------------------------------------------------------------------
" Settings
" ------------------------------------------------------------------------
set nocompatible                      " don't try to be strictly vi-like
set modelines=0                       " don't use modelines (for security)
set viminfo='20,\"50                  " use a viminfo file,...
set history=500                       " limit history
set ruler                             " show the cursor position
set title                             " show title
set incsearch                         " find as entering pattern
set t_Co=256                          " uses 256 colors
set ignorecase                        " case insensitive patterns,..
set cursorline
set smartcase                         " when only lowercase is used
set pastetoggle=<F2>                  " F2 toggles indenting when pasting
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
setlocal foldmethod=syntax            " folding uses syntax for folding
setlocal nofoldenable                 " don't start with folded lines

" -------------------------------------------------------------------------
" Set the leader key
" -------------------------------------------------------------------------
let mapleader = ","

" -------------------------------------------------------------------------
" In VIEW mode.
" -------------------------------------------------------------------------
set showmatch 
set mat=5

" -------------------------------------------------------------------------
" Backup and Files
" -------------------------------------------------------------------------
"set backup                     " enable creation of backup files
"set backupdir=~/.vim/backups   " Where to store the backups
"set directory=~/.vim/tmp       " Temporary files will go

" ------------------------------------------------------------------------
" Status line definition
" ------------------------------------------------------------------------
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

" -------------------------------------------------------------------------
" Code xx column line - very useful I think?
" -------------------------------------------------------------------------
set cc=100
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%>100v.\+/

" -------------------------------------------------------------------------
" Autogenerate the docs
" -------------------------------------------------------------------------
autocmd BufWritePost ~/.vim/doc/* :helptags ~/.vim/doc

" -------------------------------------------------------------------------
" Settings for Pathogen
" -------------------------------------------------------------------------
filetype off                          " disable filetype use. Enabled later
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" -------------------------------------------------------------------------
" Only do this part if compiled with support for autocommands
" -------------------------------------------------------------------------
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

"
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
"
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

"
" No blinking cursor. See http://www.linuxpowertop.org/known.php
"
let &guicursor = &guicursor . ",a:blinkon0"

"
" View changes after the last save
"
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

nnoremap <leader>? :DiffSaved<cr>

" ----------------------------------------------------------------------
" PLUGINS
" ----------------------------------------------------------------------

" ----------------------------------------------------------------------
" Plugin: Ruby speedup
" ----------------------------------------------------------------------
let g:ruby_path                      = ''
let g:rubycomplete_buffer_loading    = 0
let g:rubycomplete_classes_in_global = 0
let g:rubycomplete_rails             = 0

"
" get rid of custom rails syntax highlighting
"
let g:rails_syntax = 0

"
" syntax highlighting:
"
let ruby_no_expensive = 1
let ruby_operators    = 1

" ---------------------------------------------------------------------
" Plugin: BufExplorer - easier invoke keys
" ---------------------------------------------------------------------
nnoremap <leader>bb :BufExplorer<cr>

" ---------------------------------------------------------------------
" Plugin: NERDTree - keys to toggle NERDTree
" ---------------------------------------------------------------------
nnoremap <leader>d :NERDTreeToggle<cr>
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeMapActivateNode='<CR>'

" ---------------------------------------------------------------------
" Plugin: Gist settings
" ---------------------------------------------------------------------
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1    " Detect file type
let g:gist_open_browser_after_post = 0
let g:gist_browser_command = 'mozilla %URL% &'
let g:gist_put_url_to_clipboard_after_post = 0

" Auth
let g:github_user = 'bdryanovski'
let g:github_token = '17a354605cb3d28d449a7973e1a30050'

" ---------------------------------------------------------------------
" Plugin: vim-pasta 
" ---------------------------------------------------------------------
let g:pasta_enabled_filetypes = ['ruby', 'javascript', 'css', 'coffee', 'php']

" ---------------------------------------------------------------------
" Plugin: Scratch - define invoke function
" ---------------------------------------------------------------------
function! ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction

map <leader>s :call ToggleScratch()<CR>

" --------------------------------------------------------------------
" Plugin: Rails - turn off rails related things in statusbar
" --------------------------------------------------------------------
let g:rails_statusline=0

" --------------------------------------------------------------------
" Plugin: Snipmate configuration
" --------------------------------------------------------------------
source ~/.vim/snippets/support_functions.vim
autocmd vimenter * call ExtractSnips("~/.vim/snippets/html", "eruby")
autocmd vimenter * call ExtractSnips("~/.vim/snippets/html", "php")


" --------------------------------------------------------------------
" Plugin: Coffe-Script
" --------------------------------------------------------------------
let coffee_make_options = "--bare"
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
"au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

" --------------------------------------------------------------------
" Plugin: Neocomplcache
" --------------------------------------------------------------------
let g:neocomplcache_enable_at_startup = 1

" --------------------------------------------------------------------
" Plugin: Powerline
" --------------------------------------------------------------------
let g:Powerline_symbols = 'compatible'

" --------------------------------------------------------------------
" Plugin: tagbar
" --------------------------------------------------------------------
" see key mapping section

" --------------------------------------------------------------------
" Plugin: vim-indent-guides 
" --------------------------------------------------------------------
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size  = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=red ctermbg=236

" -----------------------------------------------------------------
" Add the closing brace only at the end of the line
" -----------------------------------------------------------------
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

" --------------------------------------------------------------------
" Map VIM custom keys 
" --------------------------------------------------------------------

" --------------------------------------------------------------------
" Map F-keys
" --------------------------------------------------------------------
map <F1> <ESC>
map <F2> :BufExplorer<CR>
map <F3> :NERDTreeToggle<CR>
" Clear syntax highlighting
map <F4> :noh<CR> 
map <F5> :TagbarToggle<CR>
map <F10> :help vimbook.txt<CR>
map <F12> :edit /home/zero/.vimrc<CR>
map <S-F12> :source /home/zero/.vimrc<CR>

" --------------------------------------------------------------------
" Map tabs 
" --------------------------------------------------------------------
map <leader>1 :tabn 1<CR>
map <leader>2 :tabn 2<CR>
map <leader>3 :tabn 3<CR>
map <leader>4 :tabn 4<CR>
map <leader>5 :tabn 5<CR>
map <leader>6 :tabn 6<CR>
map <leader>7 :tabn 7<CR>
map <leader>8 :tabn 8<CR>
map <leader>9 :tabn 9<CR>

"
" Set the keys to turn spell checking on/off
" 
map <F8> <Esc>:setlocal spell spelllang=en_us<CR>
map <F9> <Esc>:setlocal nospell<CR>

"
" Remove highlighting search results
"
nnoremap <leader><space> :noh <CR>

"
" Map w!! to write file with sudo, when forgot to open with sudo.
"
cmap w!! w !sudo tee % >/dev/null

"
" Use CTRL-S for saving, also in Insert mode
"
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

"
" bckspace in Visual mode deletes selection
"
vnoremap <BS> d

"
" Copy/Paste mapping
"
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y
vnoremap <C-Insert> "+y

"
" CTRL-X and SHIFT-Del are Cut
"
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

"
" CTRL-Z is Undo; not in cmdline though
"
noremap <C-Z> u
inoremap <C-Z> <C-O>u

"
" CTRL-Y is Redo (although not repeat); not in cmdline though
"
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

"
" CTRL-Tab is Next window
"
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

"
" Smart way to move btw. windows
"
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"
" Upcase current word
" 
nnoremap <C-u> mzgUiw`z

"
" Split and execute any command:
"
nnoremap __ :split \|<Space>

"
" Open new tab more easily:
"
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>T :tabedit %<cr>gT:quit<cr>

"
" Paste in insert and command modes
"
imap <C-p> <Esc>pa
cmap <C-p> <C-r>"

"
" Copy/Paste mapping
"
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

"
" Moving through splits:
"
"nmap gh <C-w>h
"nmap gj <C-w>j
"nmap gk <C-w>k
"nmap gl <C-w>l

"
" CTRL-V and SHIFT-Insert are Paste
"
"map <C-V>   "+gP
"map <S-Insert>    "+gP
"cmap <C-V>    <C-R>+
"cmap <S-Insert>   <C-R>+
