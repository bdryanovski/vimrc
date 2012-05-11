if has("unix")
  set guifont=Monaco\ 10      " set font
elseif has("win32")
  set guifont=Droid_Sans_Mono:h10
end
set columns=80                          " characters per line = 80
set guioptions-=T                       " no toolbar
set guioptions-=r                       " no right scrollbar
set guioptions+=m
set guioptions-=L                       " no left scrollbar when v.split

"colorscheme molokai  " monokai
