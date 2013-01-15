" Global packages.

Bundle 'gmarik/vundle'

" Extend VIM
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdcommenter'
Bundle 'msanders/snipmate.vim'
Bundle 'widox/vim-buffer-explorer-plugin'
Bundle 'tsaleh/vim-matchit'
"Bundle 'xolox/vim-session'                             " Not in use anymore
Bundle 'vim-scripts/scratch.vim'
Bundle 'sickill/vim-pasta'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'godlygeek/tabular'

" Extra features
"Bundle 'mattn/zencoding-vim'
Bundle 'gmarik/github-search.vim'
Bundle 'vim-scripts/TwitVim'
Bundle 'scrooloose/syntastic'
"Bundle 'Rykka/colorv.vim' " color view/pick/edit/design/scheme tool in Vim
Bundle 'tpope/vim-surround.git'
Bundle 'AndrewRadev/splitjoin.vim.git'
Bundle 'AndrewRadev/switch.vim.git'

" Control Version Systems
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/vcscommand.vim'

" Syntax Highlighting and Language specifically
"Bundle 'duwanis/tomdoc.vim'
Bundle 'tpope/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'vim-ruby/vim-ruby'
"Bundle 'digitaltoad/vim-jade'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tangledhelix/vim-octopress'
"Bundle 'tpope/vim-rails'
Bundle 'aaronj1335/underscore-templates.vim'
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
Bundle 'itspriddle/vim-jquery'
Bundle 'leshill/vim-json'
Bundle 'tpope/vim-rake'
"Bundle 'jc00ke/vim-tomdoc'
Bundle 'tclem/vim-arduino'
Bundle 'henrik/vim-ruby-runner'
Bundle 'tpope/vim-endwise.git'
"Bundle 'danchoi/ri.vim.git'

" Themes and UI
Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'noahfrederick/Hemisu'
Bundle 'sjl/badwolf'
Bundle 'vim-scripts/summerfruit256.vim.git'
Bundle 'nanotech/jellybeans.vim.git'

Bundle 'kana/vim-smartinput'
Bundle 'vim-scripts/HTML-AutoCloseTag'
Bundle 'walm/jshint.vim'
"Bundle 'mihai-rotaru/vimwiki'
Bundle 'wojtekmach/vim-rename'
Bundle 'hallison/vim-ruby-sinatra'

if has("unix")
  Bundle 'mutewinter/swap-parameters.git'

  " ctags 
  Bundle 'vim-scripts/taglist.vim'
  Bundle 'xolox/vim-easytags'
  Bundle 'mbadran/headlights'

  " Linux me will use Command-T
  Bundle 'wincent/Command-T'
endif 

if has("win32") || has("win64")
  Bundle 'kien/ctrlp.vim'
endif

