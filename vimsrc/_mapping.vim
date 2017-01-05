" --------------------------------------------------------------------
" Map VIM custom keys
" --------------------------------------------------------------------
"
" Map w!! to write file with sudo, when forgot to open with sudo.
"
cnoremap w!! w !sudo tee % >/dev/null

" -----------------------------------------------------------------------------
" Dissable arrow keys - only in <esc> mode, but they will work in Edit Mode
" -----------------------------------------------------------------------------
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>
" "
" bckspace in Visual mode deletes selection
"
vnoremap <BS> d

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
inoremap <C-p> <Esc>pa
cnoremap <C-p> <C-r>"

" -----------------------------------------------------------------------------
" Map F-keys (fkeys)
" -----------------------------------------------------------------------------
noremap <F1 <ESC>
noremap <F2> :BufExplorer<CR>

noremap <F3> :NERDTreeToggle<CR>
" Clear syntax highlighting
noremap <F4> :TagbarToggle<CR>
noremap <F5> <ESC>
noremap <F6> <ESC>
noremap <F7> <ESC>
noremap <F8> :SyntasticCheck<CR>
noremap <F9> <Esc>
noremap <F10> :help vimbook.txt<CR>
noremap <S-F10> :tabnew $VIMHOME/doc/vimbook.txt<CR>
noremap <F12> :edit $MYVIMRC<CR>
noremap <S-F12> :source $MYVIMRC<CR>
"
" -----------------------------------------------------------------------------
" Mapping and using tabs
" -----------------------------------------------------------------------------
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

nnoremap <silent>g0 :<C-u>tabfirst<CR>
nnoremap <silent>g$ :<C-u>tablast<CR>
nnoremap <silent>gr :<C-u>tabprevious<CR>

" Mapping for the tabs
"
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super sueful when editing files in the same directory
"
nnoremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" -----------------------------------------------------------------------------
" Buffers
" -----------------------------------------------------------------------------
" nnoremap <Tab> :bn<CR>
" nnoremap <S-Tab> :bp<CR>
"
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
" vnoremap <C-X> "+x
" vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
" vnoremap <C-C> "+y
" vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
" noremap <C-V> "+gP
" noremap <S-Insert> "+gP

" cnoremap <C-V> <C-R>+
" cnoremap <S-Insert> <C-R>+

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

inoremap <S-Insert> <C-V>
vnoremap <S-Insert> <C-V>

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
" Option B : Moving through splits:
"
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

" -----------------------------------------------------------------------------
" Move line up/down
" -----------------------------------------------------------------------------
"source $VIMHOME/vimsrc/_move_line.vim
nnoremap <c-j> :m+<CR>==
nnoremap <c-k> :m-2<CR>==
inoremap <c-j> <Esc>:m+<CR>==gi
inoremap <c-k> <Esc>:m-2<CR>==gi
vnoremap <c-j> :m'>+<CR>gv=gv
vnoremap <c-k> :m-2<CR>gv=gv

" -----------------------------------------------------------------------------
"  Shortkeys for some useful text transformations
" -----------------------------------------------------------------------------

"
" Remap the Home key just the way I like it.
"
nnoremap <Home> ^
inoremap <Home> <Esc>^i
nnoremap 0 ^

"
" Upcase current word
"
nnoremap <C-u> mzgUiw`z

"
" Reselect selected text
"
nnoremap <leader>v V`]

" -----------------------------------------------------------------------------
" Highlight merge conflict markers
" -----------------------------------------------------------------------------
nnoremap <silent> ]c /\v^(\<\|\=\|\>){7}([^=].+)?$<CR>
nnoremap <silent> [c ?\v^(\<\|\=\|\>){7}([^=].+)\?$<CR>

" -----------------------------------------------------------------------------
" Moving arround
" -----------------------------------------------------------------------------

" Treat long lines as break lines ( useful when moving around in them)
nnoremap j gj
nnoremap k gk

" -----------------------------------------------------------------------------
" Searching & Replace
" -----------------------------------------------------------------------------

" Replace the word under the cursor (leader + s)
nnoremap <leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>

" Same as <shift>* or <shift># - Highlight the word under the cursor
"nnoremap <leader>f *<CR>

" Map <space> to (search) and Ctrl-Space to ? (backwards search)
nnoremap <space> /
nnoremap <c-space> ?

" -----------------------------------------------------------------------------
" Shortcuts
" -----------------------------------------------------------------------------

" Stupid me when holding shift
cnoremap W w
cnoremap WQ wq
cnoremap wQ wq
cnoremap Q q

" Easily mark a single line in charactger-wise visual mode
nnoremap vv _vg_
