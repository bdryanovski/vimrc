if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

source $VIMRUNTIME/vimsrc/_settings.vim
source $VIMRUNTIME/vimsrc/_plugins.vim
source $VIMRUNTIME/vimsrc/_mapping.vim