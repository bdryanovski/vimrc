" -----------------------------------------------------------------------------
"  Set `selection`, `selectmode`, `mousemodel` and `keymodel` for MS-Windows
" -----------------------------------------------------------------------------

behave mswin

source $VIMHOME/vimsrc/_auth.vim
source $VIMHOME/vimsrc/_settings.vim
source $VIMHOME/vimsrc/_plugins.vim
source $VIMHOME/vimsrc/_mapping.vim
source $VIMHOME/vimsrc/_syntax.vim
source $VIMHOME/vimsrc/_functions.vim

" -----------------------------------------------------------------------------
"  Komfo Platform Tabs settings
" -----------------------------------------------------------------------------
set ts=4                  " One tab is No. spaces
set sw=4 ai
set tabstop=4              " No. of spaces for tab in file
set shiftwidth=4           " No. of spaces for step in autoindent
set softtabstop=4          " No. of spaces for tab when editing 

" -----------------------------------------------------------------------------
" PHPUnit settings
" -----------------------------------------------------------------------------
let g:phpunit_config = 'D:\xampp\htdocs\backend\development\scripts\unit_tests\phpunit-bozhidar.xml'
