" --------------------------------------------------------------------
" Map VIM custom keys
" --------------------------------------------------------------------
"
" Map w!! to write file with sudo, when forgot to open with sudo.
"
cnoremap w!! w !sudo tee % >/dev/null

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
"nnoremap <leader><leader>2 <esc>:set noexpandtab tabstop=2 softtabstop=2 shiftwidth=2<cr>
"nnoremap <leader><leader>4 <esc>:set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4<cr>
"nnoremap <leader><leader>8 <esc>:set noexpandtab tabstop=8 softtabstop=8 shiftwidth=8<cr>

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
noremap <F1> <ESC>
noremap <F2> :BufExplorer<CR>
noremap <F3> :NERDTreeToggle<CR>
" Clear syntax highlighting
noremap <F4> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" Currently work only on *nix
noremap <F5> <ESC>
noremap <F6> <ESC>
noremap <F7> <ESC>
noremap <F8> :TagbarToggle<CR>
noremap <F9> <Esc>:setlocal nospell<CR>
noremap <F10> :help vimbook.txt<CR>
noremap <S-F10> :tabnew $VIMHOME/doc/vimbook.txt<CR>
noremap <F12> :edit $MYVIMRC<CR>
noremap <S-F12> :source $MYVIMRC<CR>
"
" -----------------------------------------------------------------------------
" Mapping and using tabs
" -----------------------------------------------------------------------------
noremap <leader>1 :tabn 1<CR>
noremap <leader>2 :tabn 2<CR>
noremap <leader>3 :tabn 3<CR>
noremap <leader>4 :tabn 4<CR>
noremap <leader>5 :tabn 5<CR>
noremap <leader>6 :tabn 6<CR>
noremap <leader>7 :tabn 7<CR>
noremap <leader>8 :tabn 8<CR>
noremap <leader>9 :tabn 9<CR>

" NOTE: nice functionality but i don't need it that much.
" Talking about the :tabn mapping

"
" Open new tab more easily:
"
"nnoremap <leader>t :tabnew<cr>
"nnoremap <leader>T :tabedit %<cr>gT:quit<cr>

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>


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
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

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
noremap <C-V> "+gP
noremap <S-Insert> "+gP

cnoremap <C-V> <C-R>+
cnoremap <S-Insert> <C-R>+

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

inoremap <S-Insert> <C-V>
vnoremap <S-Insert> <C-V>

" Use CTRL-Q to do what CTRL-V used to do
" TODO: not working under xterm under unix
noremap <C-Q> <C-V>

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
" Vertical and horizontal split then hop to a new buffer
"
noremap <leader>v :vsp<C-R>
noremap <leader>h :split<C-R>

"
" Option A : Smart way to move btw. windows
"
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

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

"
" Split and execute any command:
"
nnoremap __ :split \|<Space>

" Switch CWD to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Remove the Windows ^M - when the encodings gets messed up
"noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

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

" Change working directory to that of the current file
cnoremap cwd lcd %:p:h
cnoremap cd. lcd %:p:h

" Stupid me when holding shift
cnoremap W w
cnoremap WQ wq
cnoremap wQ wq
cnoremap Q q

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
" command GREP :execute 'vimgrep /'.expand('<cword>').'/gj '.expand('%') | copen

" -----------------------------------------------------------------------------
" Unit testing by framework
" -----------------------------------------------------------------------------

"
" PHPUnit with custom configuration.
"

nnoremap <leader>u :exe '!phpunit --configuration ' . g:phpunit_config . ' %:p'<CR>

" -----------------------------------------------------------------------------
" Template keymapping
" -----------------------------------------------------------------------------

"Jump between %VAR% placeholders in Normal mode with
" <Ctrl-p>
nnoremap <c-p> /%\u.\{-1,}%<cr>c/%/e<cr>
"Jump between %VAR% placeholders in Insert mode with
" <Ctrl-p>
inoremap <c-p> <ESC>/%\u.\{-1,}%<cr>c/%/e<cr>


" -----------------------------------------------------------------------------
" Language specific mapping
" -----------------------------------------------------------------------------

" PHP Section:

" wrap <?= ?> arround visually selected text
vmap st "zdi<?= <C-R>z ?>"<Esc>

" -----------------------------------------------------------------------------
" Plugin: Switch
" -----------------------------------------------------------------------------

nnoremap - :Switch<cr>

" -----------------------------------------------------------------------------
" Plugin: vim-rspec
" -----------------------------------------------------------------------------
map <Leader>tt :call RunCurrentSpecFile()<CR>
map <Leader>ss :call RunNearestSpec()<CR>
map <Leader>ll :call RunLastSpec()<CR>
map <Leader>aa :call RunAllSpecs()<CR>

" -----------------------------------------------------------------------------
" Plugin: NERDTree
" -----------------------------------------------------------------------------

" Locate the current file into the tree
nmap <leader>m :NERDTreeToggle<CR>
