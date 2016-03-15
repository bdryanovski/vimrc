" -----------------------------------------------------------------------------
" PLUGINS
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Source: Adding autocorrect file for most command misspel words
" -----------------------------------------------------------------------------
source $VIMHOME/vimsrc/autocorrect.vim

" -----------------------------------------------------------------------------
" Plugin: vim-javascript
" -----------------------------------------------------------------------------
"let g:javascript_enable_domhtmlcss=1
let b:javascript_fold=1
let g:javascript_ignore_javaScriptdoc=0
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"

" -----------------------------------------------------------------------------
" Plugin: javascript-libraries-syntax.vim.git
" -----------------------------------------------------------------------------
let g:used_javascript_libs = 'underscore,jquery,angularjs,angularui,jasmine'

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
" Plugin: buftabline 
" -----------------------------------------------------------------------------
let g:buftabline_show=1

" -----------------------------------------------------------------------------
" Plugin: vim-webdevicons
" -----------------------------------------------------------------------------
if has("gui_running")
  let g:webdevicons_enable = 1
else
  let g:webdevicons_enable = 0
endif

let g:airline_powerline_fonts = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1

" NERDTree
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:DevIconsEnableFoldersOpenClose = 1

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
" Hide the help
"
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSplitBelow=0        " Split new window above current.


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

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" -----------------------------------------------------------------------------
" Plugin: vim-pasta
" -----------------------------------------------------------------------------
let g:pasta_enabled_filetypes = ['ruby', 'javascript', 'css', 'coffee', 'php']

" -----------------------------------------------------------------------------
" Plugin: ctrlp
" -----------------------------------------------------------------------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode='ra'

set wildignore+=.git/*,*/tmp/*,*.so,*.swp,*.zip,*node_modules* " MacOSX/Linux
" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp\|node_modules$',
      \ 'file': '\.exe$\|\.so$\|\.dat\|\.jpg\|\.png\|\.DS_Store\|.swp$'
      \ }

" -----------------------------------------------------------------------------
" Plugin: Snipmate configuration
" Plugin: UltiSnips
" Plugin: vim-snippets
" -----------------------------------------------------------------------------
" Loading helper function used into the snippets itself.
source $VIMHOME/snippets/support_functions.vim
"
" let g:snippets_dir = expand($VIMHOME.'/snippets/')
let g:snips_author = 'Bozhidar Dryanovski'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" -----------------------------------------------------------------------------
" Plugin: neocomplete
" -----------------------------------------------------------------------------
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#max_list = 15
let g:neocomplete#max_keyword_width = 70
let g:necomplete#auto_completion_start_length = 3
let g:necomplete#min_keyword_length = 4

" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

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

" Enable omni completion.
"
autocmd FileType css           setlocal    omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal    omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript    setlocal    omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python        setlocal    omnifunc=pythoncomplete#Complete
autocmd FileType xml           setlocal    omnifunc=xmlcomplete#CompleteTags

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
let g:coffee_lint_options = "-f ~/.vim/configs/lint.json"
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
"au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

" -----------------------------------------------------------------------------
" Plugin: vim-airline
" -----------------------------------------------------------------------------
let g:airline_detect_modified=1
let g:airline_powerline_fonts=1

" Figutive
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''

" Sintastic
let g:airline#extensions#syntastic#enabled = 1

" Gitgutter
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

" Tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#tab_min_count = 1

"let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = '␤'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.branch ='🍺'
let g:airline_symbols.crypt = '🔒'

if has("gui_running")
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.branch = '⎇  '
endif
"
" -----------------------------------------------------------------------------
" Plugin: Syntastic
" -----------------------------------------------------------------------------
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_enable_highlighting=1
let g:syntastic_enable_balloons=1
let g:syntastic_auto_jump=0
let g:syntastic_mode_map = { 'mode': 'active',
      \ 'active_filetypes': ['ruby','php'],
      \ 'passive_filetypes': ['less', 'vim', 'coffee', 'html', 'javascript'] }

let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

let g:syntastic_coffee_checkers = ['coffeelint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args="-c ~/.vim/configs/eslint.json"
let g:syntastic_coffee_coffeelint_args="--csv -f ~/.vim/configs/lint.json"

" -----------------------------------------------------------------------------
" Plugin: vim-indent-guides
" -----------------------------------------------------------------------------
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size  = 0
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#3e5446 ctermbg=8
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#252222 ctermbg=236

" -----------------------------------------------------------------------------
" Plugin: Switch.vim
" -----------------------------------------------------------------------------
autocmd FileType ruby let g:switch_definitions = [ ['if', 'unless'], ['ASC', 'DESC'] ]
autocmd FileType html,javascript let g:switch_definitions = [['slow', 'normal', 'fast'], ['true', 'false']]
autocmd FileType coffee let g:switch_definitions = [ ['if', 'unless'], ['and', 'or'], ['true', 'false']]

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


" -----------------------------------------------------------------------------
" Plugin: Tagbar
" -----------------------------------------------------------------------------
let g:tagbar_compact = 1
let g:tagbar_autofocus = 1
"let g:tagbar_autopreview = 1

" -----------------------------------------------------------------------------
" Plugin: gitgutter
" -----------------------------------------------------------------------------
let g:gitgutter_highlight_lines = 0
let g:gitgutter_diff_args = '-w'
let g:gitgutter_eager = 0

" -----------------------------------------------------------------------------
" Plugin: Switch
" -----------------------------------------------------------------------------

nnoremap - :Switch<cr>


" -----------------------------------------------------------------------------
" Plugin: RainbowParentheses
" -----------------------------------------------------------------------------
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"
" -----------------------------------------------------------------------------
" Plugin: smartpairs
" -----------------------------------------------------------------------------

"Key for running smartpairs in all modes (select/delete/change/yank)
"default is 'v'
let g:smartpairs_key = 'v'

"Key for running smartpairs in the selection mode 
"(extend current selection to the next pairs)
"default is 'v'
let g:smartpairs_nextpairs_key = 'v'

"Enable 'uber mode' (see above)
"default is 1
let g:smartpairs_uber_mode = 1

"Start selection from word
"If there is no regions then select word
"default is 0
let g:smartpairs_start_from_word = 1

"Key for running smartpairs in the selection mode
"for extending selection with IN-mod (like vi")
"default is 'm'
let g:smartpairs_nextpairs_key_i = 'm'

"Key for running smartpairs in the selection mode 
"for extending selection with ABOVE-mod (like va")
"default is 'M'
let g:smartpairs_nextpairs_key_a = 'M'

""Keys combination for canceling last smartpais selection
"default is '<C-V>' Ctrl+Shift+v
"under macvim you can use Cmd key e.g. <D-V> -> Cmd+Shift+v
let g:smartpairs_revert_key = '<C-V>'

"Smartpairs works only with 20 lines before cursor position
"but you can changes this limit:
let g:smartpairs_maxdepth = 20")

" -----------------------------------------------------------------------------
" Plugin: JsDoc
" -----------------------------------------------------------------------------
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_return = 1
let g:jsdoc_return_description = 0
let g:jsdoc_access_descriptions = 0
let g:jsdoc_underscore_private = 1
let g:jsdoc_allow_shorthand = 1

" -----------------------------------------------------------------------------
" Plugin: Ag
" -----------------------------------------------------------------------------
let g:ag_highlight = 1

" -----------------------------------------------------------------------------
" Plugin: JSX
" -----------------------------------------------------------------------------
let g:jsx_ext_required = 0

" -----------------------------------------------------------------------------
" Plugin: vim-polyglot
" -----------------------------------------------------------------------------
let g:polyglot_disabled = ['php']

"
" Theme: gruvebox
"

let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_signs = 1

