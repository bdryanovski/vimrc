" -----------------------------------------------------------------------------
" PLUGINS
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Source: Adding autocorrect file for most command misspel words
" -----------------------------------------------------------------------------
source $VIMHOME/vimsrc/autocorrect.vim

" -----------------------------------------------------------------------------
" Plugin: Headlights
" -----------------------------------------------------------------------------
let g:headlights_use_plugin_menu = 0
let g:headlights_smart_menus = 1
let g:headlights_show_commands = 1
let g:headlights_show_mappings = 1
let g:headlights_show_abbreviations = 0
let g:headlights_show_functions = 0
let g:headlights_show_highlights = 0
let g:headlights_show_files = 0
let g:headlights_show_load_order = 0
let g:headlights_debug_mode = 0

" -----------------------------------------------------------------------------
" Plugin: ragtag
" -----------------------------------------------------------------------------
"
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1

" -----------------------------------------------------------------------------
" Plugin: splitjoin
" -----------------------------------------------------------------------------
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
let g:splitjoin_ruby_curly_braces = 1
let g:splitjoin_coffee_suffix_if_clause = 1
let g:splitjoin_normalize_whitespace = 1
let g:splitjoin_align = 1

nnoremap sj :SplitjoinJoin<cr>
nnoremap sk :SplitjoinSplit<cr>
" -----------------------------------------------------------------------------
" Plugin: smartinput
" -----------------------------------------------------------------------------
" Language: Rauby , when you type | after do , insert |cursor|
call smartinput#map_to_trigger('i', '<bar>', '<Bar>', '<Bar>')
call smartinput#define_rule({
      \   'at': '\({\|\<do\>\)\s*\%#',
      \   'char': '<Bar>',
      \   'input': '<Bar><Bar><Left>',
      \   'filetype': ['ruby'],
      \ })

" Language: Ruby , autocomplite #{var} in string
call smartinput#map_to_trigger('i', '#', '#', '#')
call smartinput#define_rule({
      \   'at': '\%#',
      \   'char': '#',
      \   'input': '#{}<Left>',
      \   'filetype': ['ruby'],
      \   'syntax': ['Constant', 'Special'],
      \ })

" -----------------------------------------------------------------------------
" Plugin: tabular.vim
" -----------------------------------------------------------------------------
nnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a= :Tabularize /=<CR>
nnoremap <leader>a: :Tabularize /:<CR>
vnoremap <leader>a: :Tabularize /:<CR>
nnoremap <leader>a:: :Tabularize /:\zs<CR>
vnoremap <leader>a:: :Tabularize /:\zs<CR>
nnoremap <leader>a, :Tabularize /,<CR>
vnoremap <leader>a, :Tabularize /,<CR>
nnoremap <leader>a<Bar> :Tabularize /<Bar><CR>
vnoremap <leader>a<Bar> :Tabularize /<Bar><CR>
nnoremap <leader>a# :Tabularize /#<CR>
vnoremap <leader>a# :Tabularize /#<CR>



" The following function automatically aligns when typing a
" supported character
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction


" -----------------------------------------------------------------------------
" Plugin: taglist
" -----------------------------------------------------------------------------
" set the names of flags
let tlist_php_settings = 'php;c:class;f:function;d:constant'
" close all folds except for current file
let Tlist_File_Fold_Auto_Close = 1
" make tlist pane active when opened
let Tlist_GainFocus_On_ToggleOpen = 1
" width of window
let Tlist_WinWidth = 40
" close tlist when a selection is made
let Tlist_Close_On_Select = 1

" -----------------------------------------------------------------------------
" Plugin: easy-tags
" -----------------------------------------------------------------------------

let g:easytags_file = '~/.vim/tags/default.tags'
set tags=./.tags;./tags;~/.vim/tags/default.tags;~/.vimtags
let g:easytags_dynamic_files=1
let g:easytags_by_filetype=1
let g:easytags_always_enabled=0
let g:easytags_suppress_ctags_warning=1
let g:easytags_on_cursorhold=0
let g:easytags_updatetime_autodisable=1
let g:easytags_auto_update=0
let g:easytags_auto_highlight=0


" -----------------------------------------------------------------------------
" Plugin: Ruby speedup
" -----------------------------------------------------------------------------
let g:ruby_path                      = ''
let g:rubycomplete_buffer_loading    = 0
let g:rubycomplete_classes_in_global = 0
let g:rubycomplete_rails             = 0

"
" get rid of custom rails syntax highlighting
"
let g:rails_syntax = 0

"
" syntax highlighting:
"
let ruby_no_expensive = 1
let ruby_operators    = 1

" -----------------------------------------------------------------------------
" Plugin: Solarized
" -----------------------------------------------------------------------------

let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_visibility='high'
let g:solarized_contrast='high'

" -----------------------------------------------------------------------------
" Plugin: BufExplorer - easier invoke keys
" -----------------------------------------------------------------------------
nnoremap <leader>bb :BufExplorer<cr>

" -----------------------------------------------------------------------------
" Plugin: NERDTree - keys to toggle NERDTree
" -----------------------------------------------------------------------------
nnoremap <leader>d :NERDTreeToggle<cr>

let g:NERDTreeWinSize=25
let NERDChristmasTree = 1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline = 1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']

" Add color into the tree based on the filetype
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg)
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:bg .' guifg='. a:fg
endfunction

call NERDTreeHighlightFile('jade', 'green', 'black')
call NERDTreeHighlightFile('html', 'green', 'black')
call NERDTreeHighlightFile('styl', 'green', 'black')
call NERDTreeHighlightFile('css', 'green', 'black')
call NERDTreeHighlightFile('coffee', 'cyan', 'black')

" -----------------------------------------------------------------------------
"  Plugin: twitvim.vim
" -----------------------------------------------------------------------------

" Auth settings located into `_auth.vim` file

" -----------------------------------------------------------------------------
" Plugin: vim-pasta
" -----------------------------------------------------------------------------
let g:pasta_enabled_filetypes = ['ruby', 'javascript', 'css', 'coffee', 'php']

" -----------------------------------------------------------------------------
" Plugin: Scratch - define invoke function
" -----------------------------------------------------------------------------
function! ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction

noremap <leader>s :call ToggleScratch()<CR>

" -----------------------------------------------------------------------------
" Plugin: Rails - turn off rails related things in statusbar
" -----------------------------------------------------------------------------
let g:rails_statusline=0

" -----------------------------------------------------------------------------
" ctrlp
" -----------------------------------------------------------------------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode=2

if has("win32") || has("win64")
  set wildignore+=tmp\*,*.swp,*.zip,*.exe   " Windows
  let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
else
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip  " MacOSX/Linux
  let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
endif

"let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$',
      \ 'file': '\.exe$\|\.so$\|\.dll$',
      \ 'link': 'some_bad_symbolic_links',
      \ }

" -----------------------------------------------------------------------------
" PIV
" -----------------------------------------------------------------------------
let g:DisableAutoPHPFolding=0
let g:PIVAutoClose=0

" -----------------------------------------------------------------------------
" Plugin: Snipmate configuration
" -----------------------------------------------------------------------------
" Loading helper function used into the snippets itself.
source $VIMHOME/snippets/support_functions.vim
"
let g:snippets_dir = expand($VIMHOME.'/snippets/')
let g:snips_author = 'Bozhidar Dryanovski'

" -----------------------------------------------------------------------------
" Plugin: neocomplcache
" -----------------------------------------------------------------------------
"let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list=5
let g:neocomplcache_max_menu_width=15
let g:neocomplcache_max_keyword_width=50
let g:neocomplcache_max_filename_with=20
let g:neocomplcache_auto_completion_start_length=4
let g:neocomplcache_manual_completion_start_length=2
let g:neocomplcache_min_keyword_length=3
let g:neocomplcache_min_syntax_length=3
let g:neocomplcache_enable_auto_select=0
let g:neocomplcache_enable_ignore_case=1
let g:neocomplcache_enable_camel_case_completion=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_underbar_completion=1
let g:neocomplcache_enable_fuzzy_completion=0 " too heavy
"let g:neocomplcache_disable_auto_complete=1 " 1 if you want to use manual mode
let g:neocomplcache_enable_wildcard=1 "like *
let g:neocomplcache_enable_quick_match=0
let g:neocomplcache_enable_caching_message=1

" If you want to use this settings you must have vim >= 7.3.319
"let g:neocomplcache_enable_cursor_hold_i=1 " relative with updatetime event
"let g:neocomplcache_cursor_hold_i_time=100

let g:neocomplcache_enable_auto_delimiter=0
"let g:neocomplcache_enable_caching_message=1
let g:neocomplcache_caching_limit_file_size=500
let g:neocomplcache_snippets_dir=$VIMHOME +'/snippets'
let g:neocomplcache_max_list=3 "default is 100

" Caching keymap
nnoremap <silent> <Space>ne :<C-u>NeoComplCacheCachingBuffer<CR>:echo "Caching done."<CR>

set completeopt=menu,menuone,longest
" <CR>: close popup
" <s-CR>: close popup and save indent.
"inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "\<CR>"
"inoremap <expr><s-CR> pumvisible() ? neocomplcache#close_popup() "\<CR>" : "\<CR>"
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" -----------------------------------------------------------------------------
" Plugin: Coffe-Script
" -----------------------------------------------------------------------------
let coffee_make_options = "--bare"
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
"au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

" -----------------------------------------------------------------------------
" Plugin: Powerline
" -----------------------------------------------------------------------------
if has("win32") || has("win64")
  let g:Powerline_symbols = 'compatible'
else
  let g:Powerline_symbols = 'fancy'
endif

" -----------------------------------------------------------------------------
" Plugin: tagbar
" -----------------------------------------------------------------------------
" see key mapping section

" -----------------------------------------------------------------------------
" Plugin: Syntastic
" -----------------------------------------------------------------------------
if exists("g:loaded_syntastic_plugin")

  let g:syntastic_check_on_open=1
  let g:syntastic_echo_current_error=1
  let g:syntastic_enable_balloons=1
  let g:syntastic_auto_jump=1
  let g:syntastic_mode_map = { 'mode': 'active',
        \ 'active_filetypes': ['ruby','php','coffeescript'],
        \ 'passive_filetypes': ['less', 'vim'] }

  let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

  if has("win32") || has("win64")
    let s:php_executable="D:\xampp\php\php.exe"
    let makeprg=php_executble . " -l %"
  endif
endif
" -----------------------------------------------------------------------------
" Plugin: vim-indent-guides
" -----------------------------------------------------------------------------
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size  = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#3e5446 ctermbg=8
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#252222 ctermbg=236

" -----------------------------------------------------------------------------
" Plugin: Switch.vim
" -----------------------------------------------------------------------------
autocmd FileType ruby let g:switch_definitions = [ ['if', 'unless'] ]

" -----------------------------------------------------------------------------
" Folding code blocks
" -----------------------------------------------------------------------------

set foldenable

hi Folded guibg=red guifg=Red cterm=bold ctermbg=DarkGrey ctermfg=lightblue
hi FoldColumn guibg=grey78 gui=Bold guifg=DarkBlue
set foldcolumn=2
set foldclose=
set foldmethod=indent
set foldnestmax=10
set foldlevel=0
set fillchars=vert:\|,fold:\
set foldminlines=1
" Toggle fold state between closed and opened.
"
" If there is no fold at current line, just moves forward.
" If it is present, reverse it's state.
fu! ToggleFold()
  if foldlevel('.') == 0
    normal! l
  else
    if foldclosed('.') < 0
      . foldclose
    else
      . foldopen
    endif
  endif
  echo
endf

" Map this function to Space key.
noremap <space> :call ToggleFold()<CR>
