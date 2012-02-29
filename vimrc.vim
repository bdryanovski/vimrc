" Vim confuguration

if has("unix")
   source ~/.vim/vimsrc/unixrc.vim
elseif has("win32")
   source $VIMHOME/vimsrc/win32rc.vim
endif
   
