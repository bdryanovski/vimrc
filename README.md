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

