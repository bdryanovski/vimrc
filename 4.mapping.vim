" 
" Stay real up/down/left/right are no longer here
"
"
" Touchbar Mapping
"
noremap <C-b> :BufExplorer<CR>
noremap <C-\> :NERDTreeToggle<CR>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

vnoremap <BS> d
nnoremap <leader><space> :noh <CR>

inoremap <C-p> <Esc>pa
cnoremap <C-p> <C-r>"

noremap <F1> <ESC>
noremap <F2> :BufExplorer<CR>
noremap <F3> :NERDTreeToggle<CR>
noremap <F4> <ESC>
noremap <F5> <ESC>
noremap <F6> <ESC>
noremap <F7> <ESC>
noremap <F8> <ESC>
noremap <F9> <ESC>
noremap <F10> <ESC>
noremap <F11> <ESC>
noremap <F12> <ESC>

" Move single lines
nnoremap <c-j> :m+<CR>==
nnoremap <c-k> :m-2<CR>==
inoremap <c-j> <Esc>:m+<CR>==gi
inoremap <c-k> <Esc>:m-2<CR>==gi
vnoremap <c-j> :m'>+<CR>gv=gv
vnoremap <c-k> :m-2<CR>gv=gv

nnoremap <leader>v V`]

nnoremap <leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap vv _vg_

cnoremap W w
cnoremap WQ wq
cnoremap wQ wq
cnoremap Wq wq
cnoremap Q q


" Show next matched string at the middle of the screen
nnoremap n nzz
nnoremap N Nzz
