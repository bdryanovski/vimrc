if has("unix")
  "set guifont=Monospace\ 10      " set font
  "set guifont=Inconsolata\ Medium\ 12
  set guifont=Monaco\ for\ Powerline\ 9
elseif has("win32")
  "set guifont=Droid_Sans_Mono:h10
end

" Make gvim set some usefull size when it's start
set lines=88
set columns=100                         " characters per line = 100
winpos 0 0

set guioptions-=T                       " no toolbar
set guioptions-=r                       " no right scrollbar
set guioptions-=m                       " no menu
set guioptions-=L                       " no left scrollbar when v.split

"colorscheme molokai  " monokai
" set background=light
" colorscheme molokai-alt
set background=dark
colorscheme base16-monokai
"colorscheme hemisu
"colorscheme GitHub
"colorscheme solarized
"

" -----------------------------------------------------------------------------
" Hacks
" -----------------------------------------------------------------------------

" This is a hack for the nasty vim screen flash/blink
set vb t_vb=
