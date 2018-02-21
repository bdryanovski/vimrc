# vimrc

## Installation:

### Linux
```
git clone http://bdryanovski@github.com/bdryanovski/vimrc.git $HOME/.vim
cd $HOME/.vim
ln $HOME/.vim/vimrc.vim $HOME/.vimrc
ln $HOME/.vim/gvimrc $HOME/.gvimrc
```

## Files 
### Settings and Mapping
    * `vimsrc/_settings.vim`   - All VIM settings.
    * `vimsrc/_bundle.vim`     - List of all Plugins for vundle
    * `vimsrc/_mapping.vim`    - Custom keys and shortcuts.
    * `vimsrc/_plugins.vim`    - Keep plugin settings.
    * `vimsrc/_autocmd.vim`    - Autocmd section of Vim
    * `vimsrc/_functions.vim`  - List of Custom function that didn't get into plugin
    * `vimsrc/_syntax.vim`     - Custom syntax
    * `vimsrc/autocorrect.vim` - Autocorrect list ( comman typos )

### OS 
    * `vimsrc/unixrc.vim` - If VIM run on \*nix system.  
    * `vimsrc/win32rc.vim` - If VIM run on Windows system. ( Depricated - soon will be removed )

## Shortcuts defined by the `vimsrc/_mapping.vim` (Not a full list) 

    * `vv`              - Select the current line.  
    * `<leader>t`       - On \*nix and cammand-t is installed it will run cammand-t 
    * `<leader>1..9`    - Open tab from 1 to 9.  
    * `<leader><space>` - Clear search highlight.  
    * `__`              - Split the windows and execute custom command.  
    * `<ctrl>u`         - Uparcase current word.  
    * `<ctrl>p`         - Open ctrlp search in files. (only under Windows)
    * `<shift>F10`      - Edit vimbook.txt.  

## Fn Keys

    * `F1` - <ESC>   
    * `F2` - BufExplorer.  
    * `F3` - NERDTree toggle.  
    * `F4` - Clear search highlight.  
    * `F5` - FREE   
    * `F6` - FREE  
    * `F7` - FREE   
    * `F8` - Toggle Tagbar   
    * `F9` - Stop spell checking.  
    * `F10` - Read vimbook.txt.  
    * `F11` - FREE   
    * `F12` - Edit .vimrc  
    * `Shift-F12` - Reload .vimrc  

## Buffers

  * `TAB` - In NORMAL mode, move you to the next buffer
  * `Shift-TAB` - In NORMAL mode move you to previews buffer

## Move around
Use `gh`, `gj`, `gk`, `gl` - to move through splits. If you need to move line `up` or `down` just
use `Ctrl+k` or `Ctrl+j`.

Presing `HOME` will return you into the beging of the line same as `^`.

## Search and replace
Use `<leader>r` to replace the word under the cursor, NOTE: this will replace the word into the entire file
```
`<space>` in NORMAL mode will start search.

### Fonts

```bash
curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | bash
```
