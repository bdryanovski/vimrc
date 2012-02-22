" Vim confuguration

if has("unix")
   source $VIMRUNTIME/vimsrc/unixrc.vim
elseif has("win32")
   source $VIMRUNTIME/vimsrc/win32.vim
endif
   