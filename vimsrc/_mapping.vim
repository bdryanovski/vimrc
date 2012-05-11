" --------------------------------------------------------------------
" Map VIM custom keys 
" --------------------------------------------------------------------
"
" Quick insert of newline in normal mode
" ctrl = put new line after the cursor
" shift + ctrl = put new line before cursor
" TODO: Not working under unix, check win32
"
nnoremap <silent> <CR> :put=''<CR> 
nnoremap <silent> <S-CR> :.-1put =''<CR>

"
" Map w!! to write file with sudo, when forgot to open with sudo.
"
cmap w!! w !sudo tee % >/dev/null

"
" bckspace in Visual mode deletes selection
"
vnoremap <BS> d

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
" Remove highlighting search results
"
nnoremap <leader><space> :noh <CR>

" -----------------------------------------------------------------------------
" Copy and Paste shortkeys
" -----------------------------------------------------------------------------

"
" Paste in insert and command modes
"
imap <C-p> <Esc>pa
cmap <C-p> <C-r>"

" -----------------------------------------------------------------------------
" Map F-keys
" -----------------------------------------------------------------------------
map <F1> <ESC>
map <F2> :BufExplorer<CR>
map <F3> :NERDTreeToggle<CR>
" Clear syntax highlighting
map <F4> :noh<CR> 
map <F5> :TagbarToggle<CR>
map <F6> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
" Set they keys to turn on/off the spell check
map <F8> <Esc>:setlocal spell spelllang=en_us<CR>
map <F9> <Esc>:setlocal nospell<CR>
map <F10> :help vimbook.txt<CR>
map <F12> :edit $VIMHOME/vimrc.vim"<CR>
map <S-F12> :source $VIMHOME/vimrc.vim<CR>

" -----------------------------------------------------------------------------
" Mapping and using tabs
" -----------------------------------------------------------------------------
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
" Open new tab more easily:
"
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>T :tabedit %<cr>gT:quit<cr>

" -----------------------------------------------------------------------------
"  Comman UI key binding
" -----------------------------------------------------------------------------

"
" Use CTRL-S for saving, also in Insert mode
"
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

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
" TODO: not working under xterm under unix
noremap <C-Q>		<C-V>

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

" -----------------------------------------------------------------------------
"  Moving into split view
" -----------------------------------------------------------------------------

"
" Option A : Smart way to move btw. windows
"
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"
" Option B : Moving through splits:
"
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l


" -----------------------------------------------------------------------------
"  Shortkeys for some useful text transformations
" -----------------------------------------------------------------------------

"
" Upcase current word
" 
nnoremap <C-u> mzgUiw`z

"
" Split and execute any command:
"
nnoremap __ :split \|<Space>

" SVN Blame
vmap gl :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" -----------------------------------------------------------------------------
" Searching & Replace
" -----------------------------------------------------------------------------

" Replace the word under the cursor (leader + s)
nnoremap <leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" Same as <shift>* or <shift># - Highlight the word under the cursor
nnoremap <leader>f *<CR>


" -----------------------------------------------------------------------------
" Shortcuts
" -----------------------------------------------------------------------------

" Change working directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" Stupid me when holding shift 
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q

" Easily mark a single line in charactger-wise visual mode
nnoremap vv _vg_

" -----------------------------------------------------------------------------
" Commands:
" -----------------------------------------------------------------------------

" Delete file with VIM
command! -complete=file -nargs=1 Remove :echo 'Remove: '.'<f-args>'.' '.(delete(<f-args>) == 0 ? 'SUCCEEDED' : 'FAILED')

" http://vim.wikia.com/wiki/VimTip483
" You can define a command allowing you to type :GREP to search for the current
" word under the cursor, with the results presented in the quickfix window as a
" 'list occurrences' search.
command GREP :execute 'vimgrep /'.expand('<cword>').'/gj '.expand('%') | copen
