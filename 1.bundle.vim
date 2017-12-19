"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/bdryanovski/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" My Bundles
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'https://github.com/jiangmiao/auto-pairs'
NeoBundle 'chemzqm/vim-jsx-improve'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'tomtom/tcomment_vim.git'
NeoBundle 'rking/ag.vim'
NeoBundle 'scrooloose/nerdtree', { 'lazy': 1, 'commands': ['NERDTreeToggle'] }
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'widox/vim-buffer-explorer-plugin', { 'lazy': 1, 'commands': [ 'BufExplorer' ] }
NeoBundle 'bling/vim-airline'
NeoBundle 'ryanoasis/vim-devicons.git'
NeoBundle 'jacoborus/tender.vim'
NeoBundle 'https://github.com/gorkunov/smartpairs.vim'


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
