" Vim confuguration

if has("unix")
   let $VIMHOME = $HOME. "/.vim/"
   source $VIMHOME/vimsrc/unixrc.vim
elseif has("win32")
   let $VIMHOME = $HOME."/vimfiles"
   source $VIMHOME/vimsrc/win32rc.vim
endif
   
