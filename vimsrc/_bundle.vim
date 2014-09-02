" Global packages.

Bundle 'gmarik/vundle'

" Extend VIM
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplcache'
Bundle 'msanders/snipmate.vim'
Bundle 'widox/vim-buffer-explorer-plugin'
Bundle 'sickill/vim-pasta'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'godlygeek/tabular'
Bundle 'sheerun/vim-polyglot.git'

" Extra features
Bundle 'scrooloose/syntastic'
Bundle 'AndrewRadev/splitjoin.vim.git'
Bundle 'AndrewRadev/switch.vim.git'
Bundle 'tomtom/tcomment_vim.git'
Bundle 'airblade/vim-gitgutter.git'
Bundle 'majutsushi/tagbar'
Bundle 'bdryanovski/number-marks.git'
Bundle 'vim-scripts/TagHighlight.git'
Bundle 'Raimondi/delimitMate'
Bundle 'laurentgoudet/vim-howdoi.git'
Bundle 'rking/ag.vim'

" Control Version Systems
Bundle 'tpope/vim-fugitive'

" Time tracking
Bundle 'wakatime/vim-wakatime'

" Syntax Highlighting and Language specifically
Bundle 'othree/javascript-libraries-syntax.vim.git'
Bundle 'tpope/vim-markdown'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
Bundle 'sudar/vim-arduino-syntax'
Bundle 'tpope/vim-endwise.git'

Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'

" Themes and UI
Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bilalq/lite-dfm'

Bundle 'vim-scripts/HTML-AutoCloseTag'
Bundle 'walm/jshint.vim'
Bundle 'wojtekmach/vim-rename'

" Forgoten :
"
" Bundle 'noahfrederick/Hemisu'
" Bundle 'tpope/vim-rails'
" Bundle 'itspriddle/vim-jquery'
" Bundle 'briancollins/vim-jst.git'
" Bundle 'tpope/vim-rake'
" Bundle 'Lokaltog/vim-powerline'
" Bundle 'kana/vim-smartinput'
" Bundle 'sjl/badwolf'
" Bundle 'vim-scripts/summerfruit256.vim.git'
" Bundle 'nanotech/jellybeans.vim.git'
" Bundle 'junegunn/goyo.vim.git'
" Bundle 'PAntoine/TimeKeeper'
" Bundle 'scrooloose/nerdcommenter'
" Bundle 'tsaleh/vim-matchit'
" Bundle 'tpope/vim-surround.git'
" Bundle 'Lokaltog/vim-easymotion.git'



if has("unix")
  Bundle 'mutewinter/swap-parameters.git'

  " Linux me will use Command-T
  Bundle 'wincent/Command-T'

  " Experimenting with ctrlp
  Bundle 'kien/ctrlp.vim'

endif 
