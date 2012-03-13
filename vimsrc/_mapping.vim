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
" Set they keys to turn on/off the spell check
map <F8> <Esc>:setlocal spell spelllang=en_us<CR>
map <F9> <Esc>:setlocal nospell<CR>
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

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-V>		"+gP
map <S-Insert>		"+gP

cmap <C-V>		<C-R>+
cmap <S-Insert>		<C-R>+

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

imap <S-Insert>		<C-V>
vmap <S-Insert>		<C-V>

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q>		<C-V>

" Use CTRL-S for saving, also in Insert mode
noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<C-O>:update<CR>

" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" CTRL-F4 is Close window
noremap <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c

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
" Moving through splits:
"
"nmap gh <C-w>h
"nmap gj <C-w>j
"nmap gk <C-w>k
"nmap gl <C-w>l
