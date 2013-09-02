if has("unix")
  set guifont=Monospace\ 10      " set font
elseif has("win32")
  "set guifont=Droid_Sans_Mono:h10
end

" Make gvim set some usefull size when it's start
set lines=88
set columns=110                         " characters per line = 100
winpos 0 0

set guioptions-=T                       " no toolbar
set guioptions-=r                       " no right scrollbar
set guioptions+=m
set guioptions-=L                       " no left scrollbar when v.split

"colorscheme molokai  " monokai
set background=light
"colorscheme hemisu
colorscheme GitHub
"

" -----------------------------------------------------------------------------
" Hacks
" -----------------------------------------------------------------------------

" This is a hack for the nasty vim screen flash/blink
set vb t_vb=
