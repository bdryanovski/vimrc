" --------------------------------------------------------------------
" Map VIM custom keys 
" --------------------------------------------------------------------

" --------------------------------------------------------------------
" Map F-keys
" --------------------------------------------------------------------
map <F1> <ESC>
map <F2> :BufExplorer<CR>
map <F3> :NERDTreeToggle<CR>
" Clear syntax highlighting
map <F4> :noh<CR> 
map <F5> :TagbarToggle<CR>
map <F10> :help vimbook.txt<CR>
map <F12> :edit $VIMHOME/vimrc.vim"<CR>
map <S-F12> :source $VIMHOME/vimrc.vim<CR>

" --------------------------------------------------------------------
" Map tabs 
" --------------------------------------------------------------------
map <leader>1 :tabn 1<CR>
map <leader>2 :tabn 2<CR>
map <leader>3 :tabn 3<CR>
map <leader>4 :tabn 4<CR>
map <leader>5 :tabn 5<CR>
map <leader>6 :tabn 6<CR>
map <leader>7 :tabn 7<CR>
map <leader>8 :tabn 8<CR>
map <leader>9 :tabn 9<CR>

"
" Set the keys to turn spell checking on/off
" 
map <F8> <Esc>:setlocal spell spelllang=en_us<CR>
map <F9> <Esc>:setlocal nospell<CR>

"
" Remove highlighting search results
"
nnoremap <leader><space> :noh <CR>

"
" soft tabbing at 2, 4 and 8 spaces of width 
"
"nnoremap <leader>2 <esc>:set expandtab tabstop=2 softtabstop=2 shiftwidth=2<cr>
"nnoremap <leader>4 <esc>:set expandtab tabstop=4 softtabstop=4 shiftwidth=4<cr>
"nnoremap <leader>8 <esc>:set expandtab tabstop=8 softtabstop=8 shiftwidth=8<cr>
" hard tabbing at 2, for and 8 spaces of width "
nnoremap <leader><leader>2 <esc>:set noexpandtab tabstop=2 softtabstop=2 shiftwidth=2<cr>
nnoremap <leader><leader>4 <esc>:set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4<cr>
nnoremap <leader><leader>8 <esc>:set noexpandtab tabstop=8 softtabstop=8 shiftwidth=8<cr>

"
" Quick insert of newline in normal mode
" ctrl = put new line after the cursor
" shift + ctrl = put new line before cursor
"
nnoremap <silent> <CR> :put=''<CR> 
nnoremap <silent> <S-CR> :.-1put =''<CR>

"
" Map w!! to write file with sudo, when forgot to open with sudo.
"
cmap w!! w !sudo tee % >/dev/null

"
" Use CTRL-S for saving, also in Insert mode
"
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

"
" bckspace in Visual mode deletes selection
"
vnoremap <BS> d

"
" Copy/Paste mapping
"
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y
vnoremap <C-Insert> "+y

"
" CTRL-X and SHIFT-Del are Cut
"
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

"
" CTRL-Z is Undo; not in cmdline though
"
noremap <C-Z> u
inoremap <C-Z> <C-O>u

"
" CTRL-Y is Redo (although not repeat); not in cmdline though
"
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

"
" CTRL-Tab is Next window
"
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

"
" Smart way to move btw. windows
"
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"
" Upcase current word
" 
nnoremap <C-u> mzgUiw`z

"
" Split and execute any command:
"
nnoremap __ :split \|<Space>

"
" Open new tab more easily:
"
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>T :tabedit %<cr>gT:quit<cr>

"
" Paste in insert and command modes
"
imap <C-p> <Esc>pa
cmap <C-p> <C-r>"

"
" Copy/Paste mapping
"
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

"
" Moving through splits:
"
"nmap gh <C-w>h
"nmap gj <C-w>j
"nmap gk <C-w>k
"nmap gl <C-w>l

"
" CTRL-V and SHIFT-Insert are Paste
"
"map <C-V>   "+gP
"map <S-Insert>    "+gP
"cmap <C-V>    <C-R>+
"cmap <S-Insert>   <C-R>+
