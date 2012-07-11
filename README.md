# vimrc

## Installation:

### Linux
```
git clone http://bdryanovski@github.com/bdryanovski/vimrc.git $HOME/.vim
cd $HOME/.vim
git submodule update --init
ln $HOME/.vim/vimrc.vim $HOME/.vimrc
```

### Windows
```
git clone http://bdryanovski@github.com/bdryanovski/vimrc.git C:/Users/xxx/vimfiles/
cd C:/Users/xxx/vimfiles/
git submodule update --init
copy C:/Users/xxx/vimfiles/vimrc.vim C:/Users/xxx/_vimrc
```

## Plugins and submodule  used: 
* [submodule "bundle/fugitive"](http://github.com/tpope/vim-fugitive.git)
* [submodule "bundle/vim-less"](http://github.com/groenewege/vim-less.git)
* [submodule "bundle/github-search"](http://github.com/gmarik/github-search.vim.git)
* [submodule "bundle/vim-markdown"](http://github.com/tpope/vim-markdown.git)
* [submodule "bundle/vim-rails"](http://github.com/tpope/vim-rails.git)
* [submodule "bundle/vim-ruby"](http://github.com/vim-ruby/vim-ruby.git)
* [submodule "bundle/vim-indent-guides"](http://github.com/nathanaelkane/vim-indent-guides.git)
* [submodule "bundle/snipmate"](http://github.com/msanders/snipmate.vim)
* [submodule "bundle/vim-javascript-syntax"](https://github.com/jelera/vim-javascript-syntax.git)
* [submodule "bundle/tabular"](https://github.com/godlygeek/tabular.git)
* [submodule "bundle/twitvim"](https://github.com/vim-scripts/TwitVim.git)
* [submodule "bundle/vim-octopress"](https://github.com/tangledhelix/vim-octopress.git)
* [submodule "bundle/jade"](https://github.com/digitaltoad/vim-jade.git)
* [submodule "bundle/session"](https://github.com/xolox/vim-session.git)
* [submodule "bundle/solarized"](https://github.com/altercation/vim-colors-solarized.git)
* [submodule "bundle/smartinput"](https://github.com/kana/vim-smartinput.git)
* [submodule "bundle/syntastic"](https://github.com/scrooloose/syntastic.git)
* [submodule "bundle/neocomplcache"](https://github.com/Shougo/neocomplcache.git)
* [submodule "bundle/html_auto_close_tag"](https://github.com/vim-scripts/HTML-AutoCloseTag.git)
* [submodule "bundle/PIV"](https://github.com/spf13/PIV.git)
* [submodule "bundle/ctrlp"](https://github.com/kien/ctrlp.vim.git)
* [submodule "bundle/jshint"](https://github.com/walm/jshint.vim.git)
* [submodule "bundle/hemisu_color"](https://github.com/noahfrederick/Hemisu.git)

## Files 
### Settings and Mapping
    * `vimsrc/_settings.vim` - All VIM settings.  
    * `vimsrc/_mapping.vim` - Custom keys and shortcuts.  
    * `vimsrc/_plugins.vim` - Keep plugin settings.  

### OS 
    * `vimsrc/unixrc.vim` - If VIM run on \*unix system.  
    * `vimsrc/win32rc.vim` - If VIM run on Windows system.

## Shortcuts defined by the `vimsrc/_mapping.vim`  

    * `vv` - Select the current line.  
    * `<leader>s` - Replace the word under the cursor.  
    * `<leader>t` - Open empty tab.  
    * `<leader>1..9` - Open tab from 1 to 9.  
    * `<leader><space>` - Clear search highlight.  
    * `__` - Split the windows and execute custom command.  
    * `<ctrl>u` - Uparcase current word.  
    * `<ctrl>p` - Open ctrlp search in files.  
    * `<shift>F10` - Edit vimbook.txt.  
    * `<shift>F12` - Reload the .vimrc  

## Fn Keys

    * `F1` - <ESC>
    * `F2` - BufExplorer.  
    * `F3` - NERDTree toggle.  
    * `F4` - Clear search highlight.  
    * `F5` - Tagbar toggle.    
    * `F6` - Search for word under the cursor.  
    * `F7` - <empty>  
    * `F8` - Set spell check to `English`.  
    * `F9` - Stop spell checking.  
    * `F10` - Read vimbook.txt.  
    * `F11` - <empty>  
    * `F12` - Edit .vimrc  

