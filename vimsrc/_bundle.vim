" Global packages.

Bundle 'gmarik/vundle'

" Extend VIM
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplcache'
" Bundle 'scrooloose/nerdcommenter'
Bundle 'msanders/snipmate.vim'
Bundle 'widox/vim-buffer-explorer-plugin'
" Bundle 'tsaleh/vim-matchit'
Bundle 'sickill/vim-pasta'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'godlygeek/tabular'
"Bundle 'thoughtbot/vim-rspec'
Bundle 'sheerun/vim-polyglot.git'

" Extra features
Bundle 'scrooloose/syntastic'
"Bundle 'tpope/vim-surround.git'
Bundle 'AndrewRadev/splitjoin.vim.git'
Bundle 'AndrewRadev/switch.vim.git'
Bundle 'tomtom/tcomment_vim.git'
Bundle 'airblade/vim-gitgutter.git'
Bundle 'majutsushi/tagbar'
Bundle 'Lokaltog/vim-easymotion.git'
Bundle 'bdryanovski/number-marks.git'

" Control Version Systems
Bundle 'tpope/vim-fugitive'

" Syntax Highlighting and Language specifically
Bundle 'othree/javascript-libraries-syntax.vim.git'
Bundle 'tpope/vim-markdown'
Bundle 'vim-ruby/vim-ruby'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-rails'
Bundle 'itspriddle/vim-jquery'
Bundle 'leshill/vim-json'
Bundle 'tpope/vim-rake'
Bundle 'sudar/vim-arduino-syntax'
Bundle 'tpope/vim-endwise.git'
Bundle 'Keithbsmiley/rspec.vim'
Bundle 'briancollins/vim-jst.git'

" Themes and UI
"Bundle 'Lokaltog/vim-powerline'
Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'noahfrederick/Hemisu'
" Bundle 'sjl/badwolf'
"Bundle 'vim-scripts/summerfruit256.vim.git'
"Bundle 'nanotech/jellybeans.vim.git'
" Bundle 'uguu-org/vim-matrix-screensaver.git'
"Bundle 'junegunn/goyo.vim.git'
Bundle 'bilalq/lite-dfm'

Bundle 'kana/vim-smartinput'
Bundle 'vim-scripts/HTML-AutoCloseTag'
Bundle 'walm/jshint.vim'
Bundle 'wojtekmach/vim-rename'
Bundle 'hallison/vim-ruby-sinatra'

" Timetracking
Bundle 'PAntoine/TimeKeeper'

if has("unix")
  Bundle 'mutewinter/swap-parameters.git'

  " Linux me will use Command-T
  Bundle 'wincent/Command-T'

  " Experimenting with ctrlp
  Bundle 'kien/ctrlp.vim'

endif 

if has("win32") || has("win64")
  Bundle 'kien/ctrlp.vim'
endif

