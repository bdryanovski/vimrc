set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac 

set modelines=1
set history=1000
set ruler
set title
set incsearch
set t_Co=256
set ignorecase
set cursorline
set smartcase
set wildmenu
set wildmode=longest:full
set bs=indent,eol,start
set autoindent
set si 
set ts=2
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set laststatus=2
set lbr
set tw=500
set mouse=a
set number
set showmode
set nowrap
set autoread
set visualbell
set autochdir
set noautochdir
set relativenumber
set hidden
set exrc
set secure
set so=7
set cmdheight=1
set lazyredraw

set equalalways
set splitbelow splitright

set tabpagemax=5

"
" Fix bell issue
"
set vb t_vb=

"
" Leader key
"
let mapleader = ","

set swapfile
set dir=~/.vim/tmp
set nobackup
set undolevels=1500
set undoreload=15000
set wildignore=*.swp,*.bak,*.puc,*.class

set showmatch
set mat=5

set statusline=
set statusline+=%<%f\ %h%m%r             " filename and flags
set statusline+=%{fugitive#statusline()} " git info
set statusline+=%=                       " alignment separator
set statusline+=[%{&ft}]                 " filetype
set statusline+=%-14.([%l/%L],%c%V%)     " cursor info


syntax enable
set background=dark
colorscheme tender

if exists('+colorcolumn') 
	set colorcolumn=100
else
	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
endif

if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif

let &guicursor = &guicursor . ",a:blinkon0"
set gcr=a:blinkon0

if (has("termguicolors"))
 set termguicolors
endif

set foldenable
hi Folded guibg=red guifg=Red cterm=bold ctermbg=DarkGrey ctermfg=lightblue
hi FoldColumn guibg=grey78 gui=Bold guifg=DarkBlue
set foldcolumn=2
set foldclose=
set foldmethod=indent
set foldnestmax=10
set foldlevel=2
set fillchars=vert:\|,fold:\
set foldminlines=3

fu! ToggleFold() 
	if foldlevel('.') == 0
		normal! l
	else
		if foldclosed('.') < 0
			. foldclose
		else
			. foldopen
		endif
	endif
	echo
endf

noremap <space> :call ToggleFold()<CR>
