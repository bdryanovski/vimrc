" Global packages.

" Snippets
"  NeoBundle 'SirVer/ultisnips'
"  NeoBundle 'honza/vim-snippets.git'
 NeoBundle 'https://github.com/Shougo/neosnippet.vim.git'
 NeoBundle 'https://github.com/Shougo/neosnippet-snippets.git'
"
"
" Always loaded Plugings
"
"  NeoBundle 'sickill/vim-pasta'
 NeoBundle 'nathanaelkane/vim-indent-guides'
 NeoBundle 'godlygeek/tabular'
"  NeoBundle 'sheerun/vim-polyglot.git'
 NeoBundle 'ctrlpvim/ctrlp.vim'
 NeoBundle 'Shougo/neocomplete.vim'
"  NeoBundle 'scrooloose/syntastic'
"  NeoBundle 'mtscout6/syntastic-local-eslint.vim'
 NeoBundle 'AndrewRadev/splitjoin.vim.git'
 NeoBundle 'AndrewRadev/switch.vim.git'
 NeoBundle 'tomtom/tcomment_vim.git'
"  NeoBundle 'airblade/vim-gitgutter.git'
"" NeoBundle 'MattesGroeger/vim-bookmarks'
 NeoBundle 'gregsexton/MatchTag'
"  NeoBundle 'Raimondi/delimitMate'

 NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" If you want to complete the candidates from include files or include files
" candidates, you need to install the neoinclude plugin
NeoBundle 'https://github.com/Shougo/neoinclude.vim'

NeoBundle 'majutsushi/tagbar.git'
"
" The following keyboard shortcuts are available in the quickfix window:
" e                   open file and close the quickfix window.
" o                   open file (same as enter).
" go                  preview file (open but maintain focus on ag.vim results).
" t                   open in a new tab.
" T                   open in new tab silently.
" h                   open in horizontal split.
" H                   open in horizontal split silently.
" v                   open in vertical split.
" gv                  open in vertical split silently.
" q                   close the quickfix window.
NeoBundle 'rking/ag.vim'
"
"
" Control Version Systems
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'gregsexton/gitv.git'

" Time tracking
NeoBundle 'wakatime/vim-wakatime'

" Syntax Highlighting and Language specifically
NeoBundle 'tpope/vim-endwise.git'

"
" Extend VIM
"
NeoBundle 'scrooloose/nerdtree', {
      \ 'lazy': 1,
      \ 'commands': ['NERDTreeToggle']
      \}
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'

NeoBundle 'widox/vim-buffer-explorer-plugin', {
      \ 'lazy': 1,
      \ 'commands': ['BufExplorer']
      \}


NeoBundle 'maksimr/vim-jsbeautify'

"
" Language: JavaScript 
"
" NeoBundle 'jelera/vim-javascript-syntax'
" NeoBundle 'https://github.com/heavenshell/vim-jsdoc'
" NeoBundle 'pangloss/vim-javascript'
NeoBundle 'neoclide/vim-jsx-improve'
NeoBundle 'leshill/vim-json'
NeoBundle 'othree/javascript-libraries-syntax.vim.git'
" NeoBundle 'mxw/vim-jsx.git'
" , {
"    \ 'lazy': 1,
"    \ 'autoload': { 'filetypes': ['javascript', 'jsx'] }
"    \}
" NeoBundle 'maksimr/vim-jsbeautify'
" NeoBundle 'gavocanov/vim-js-indent'
" NeoBundle 'lukaszb/vim-web-indent.git'

"
" Yet Another JavaScript Syntax file for Vim. Key differences:
"
" Use 'javascript' as group name's prefix, not 'javaScript' nor 'JavaScript'. Works great with SyntaxComplete.
" Recognize Web API and DOM keywords. Keep increase.
" Works perfect with javascript-libraries-syntax.vim
"
" Language: Markdown
"
 NeoBundle 'tpope/vim-markdown', {
   \ 'lazy': 1,
   \ 'autoload':  { 'filetypes': ['markdown'] }
   \ }
"
"
" Language: JSON
"
" NeoBundle 'leshill/vim-json', {
"       \ 'lazy': 1,
"       \ 'autoload': { 'filetypes': ['json'] }
"       \}
"
"
" Language: HTML
"
NeoBundle 'vim-scripts/HTML-AutoCloseTag', {
       \ 'lazy': 1,
       \ 'autoload': { 'filetypes': ['html', 'xhtml']}
       \}

"
" Language: Golang
"
NeoBundle 'fatih/vim-go'
"
"
" UI:
"
NeoBundle 'bling/vim-airline'
NeoBundle 'ryanoasis/vim-devicons.git'
"
"
" Themes:
"
NeoBundle 'mhartington/oceanic-next'
NeoBundle 'https://github.com/jdkanani/vim-material-theme.git'
NeoBundle 'https://github.com/larssmit/vim-getafe.git'
NeoBundle 'https://github.com/joshdick/onedark.vim.git'
NeoBundle 'https://github.com/raphamorim/lucario.git'
NeoBundle 'NLKNguyen/papercolor-theme'
NeoBundle 'https://github.com/reedes/vim-colors-pencil'
" NeoBundle 'zenorocha/dracula-theme'
" NeoBundle 'https://github.com/morhetz/gruvbox'
" NeoBundle 'NLKNguyen/papercolor-theme.git'
NeoBundle 'whatyouhide/vim-gotham'
" NeoBundle 'altercation/vim-colors-solarized'
" NeoBundle 'vim-scripts/ecostation.git'
" NeoBundle 'jdkanani/vim-material-theme.git'
" NeoBundle 'reedes/vim-colors-pencil.git'
" NeoBundle 'gosukiwi/vim-atom-dark.git'
" NeoBundle 'larssmit/vim-getafe.git'
" NeoBundle 'jscappini/material.vim.git'
" NeoBundle 'farseer90718/flattr.vim.git'
" NeoBundle 'w0ng/vim-hybrid.git'
"
" Forgoten :
"
" NeoBundle 'msanders/snipmate.vim'
" NeoBundle 'bdryanovski/number-marks.git'
" NeoBundle 'wincent/ferret.git'
" NeoBundle 'chrisbra/vim-diff-enhanced'
" NeoBundle 'noahfrederick/Hemisu'
" NeoBundle 'tpope/vim-rails'
" NeoBundle 'itspriddle/vim-jquery'
" NeoBundle 'briancollins/vim-jst.git'
" NeoBundle 'tpope/vim-rake'
" NeoBundle 'Lokaltog/vim-powerline'
" NeoBundle 'kana/vim-smartinput'
" NeoBundle 'sjl/badwolf'
" NeoBundle 'vim-scripts/summerfruit256.vim.git'
" NeoBundle 'nanotech/jellybeans.vim.git'
" NeoBundle 'junegunn/goyo.vim.git'
" NeoBundle 'PAntoine/TimeKeeper'
" NeoBundle 'scrooloose/nerdcommenter'
" NeoBundle 'tsaleh/vim-matchit'
" NeoBundle 'tpope/vim-surround.git'
" NeoBundle 'Lokaltog/vim-easymotion.git'
