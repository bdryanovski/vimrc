" set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types:h12
set guifont=Meslo\ LG\ L\ DZ\ Regular\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Mono\ Plus\ Font\ Awesome\ Plus\ Octicons\ Plus\ Pomicons\ Windows\ Compatible:h12 

" Make gvim set some usefull size when it's start
set lines=88
set columns=100                         " characters per line = 100
winpos 0 0

set guioptions-=T                       " no toolbar
set guioptions-=r                       " no right scrollbar
set guioptions-=m                       " no menu
set guioptions-=L                       " no left scrollbar when v.split

set background=dark
colorscheme material-theme

" -----------------------------------------------------------------------------
" Hacks
" -----------------------------------------------------------------------------

" This is a hack for the nasty vim screen flash/blink
set vb t_vb=
