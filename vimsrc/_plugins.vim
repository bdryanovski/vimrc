" -----------------------------------------------------------------------------
" PLUGINS
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Source: Adding autocorrect file for most command misspel words
" -----------------------------------------------------------------------------
"source $VIMHOME/vimsrc/autocorrect.vim

" -----------------------------------------------------------------------------
" Plugin: tabular.vim 
" -----------------------------------------------------------------------------
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:<CR>
  vmap <Leader>a: :Tabularize /:<CR>
  nmap <Leader>a:: :Tabularize /:\zs<CR>
  vmap <Leader>a:: :Tabularize /:\zs<CR>
  nmap <Leader>a, :Tabularize /,<CR>
  vmap <Leader>a, :Tabularize /,<CR>
  nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
  vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

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

endif
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
if has("unix")
  " Under win32 || win64 this setting hides up dir link. That's BAD
  " @todo: find a way to fix this under Windows.
  let NERDTreeMinimalUI=1
endif

let g:NERDTreeWinSize=25
let NERDChristmasTree = 1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline = 1
let NERDTreeMapActivateNode='<CR>'
let NERDTreeKeepTreeInNewTab=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']

" -----------------------------------------------------------------------------
" Plugin: Gist settings
" -----------------------------------------------------------------------------
let g:gist_clip_command = 'xclip -sqlection clipboard'
let g:gist_detect_filetype = 1    " Detect file type
let g:gist_open_browser_after_post = 0
let g:gist_browser_command = 'mozilla %URL% &'
let g:gist_put_url_to_clipboard_after_post = 0

" Auth
let g:github_user = 'bdryanovski'
let g:github_token = '17a354605cb3d28d449a7973e1a30050'

" -----------------------------------------------------------------------------
"  Plugin: twitvim.vim
" -----------------------------------------------------------------------------

let twitvim_consumer_key = '52Y9KlFRhtC2urjZvDeG6g'
let twitvim_consumer_secret = 'dNligTIT7yxRkJKe0swKlTlC6z9HY9lC4a1jppl2j4'

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

map <leader>s :call ToggleScratch()<CR>

" -----------------------------------------------------------------------------
" Plugin: Rails - turn off rails related things in statusbar
" -----------------------------------------------------------------------------
let g:rails_statusline=0

" -----------------------------------------------------------------------------
" PIV
" -----------------------------------------------------------------------------
let g:DisableAutoPHPFolding=0
let g:PIVAutoClose=0

" -----------------------------------------------------------------------------
" Plugin: Snipmate configuration
" -----------------------------------------------------------------------------
let g:snippets_dir = expand($VIMHOME.'/snippets/')
let g:snips_author = 'Bozhidar Dryanovski'

" -----------------------------------------------------------------------------
" Plugin: neocomplcache
" -----------------------------------------------------------------------------
let g:acp_enableAtStartup = 0 
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list=20
let g:neocomplcache_max_menu_width=15
let g:neocomplcache_max_keyword_width=50
let g:neocomplcache_auto_completion_start_length=4
let g:neocomplcache_manual_completion_start_length=2
let g:neocomplcache_min_keyword_length=3
let g:neocomplcache_min_syntax_length=3
let g:neocomplcache_enable_auto_select=0
"let g:neocomplcache_enable_ignore_case=1
let g:neocomplcache_enable_camel_case_completion=0
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_underbar_completion=0
let g:neocomplcache_enable_fuzzy_completion=0 " too heavy
"let g:neocomplcache_disable_auto_complete=1 " 1 if you want to use manual mode
let g:neocomplcache_enable_wildcard=0 "like *

" If you want to use this settings you must have vim >= 7.3.319
"let g:neocomplcache_enable_cursor_hold_i=1 " relative with updatetime event 
"let g:neocomplcache_cursor_hold_i_time=100

let g:neocomplcache_enable_auto_delimiter=0
"let g:neocomplcache_enable_caching_message=1
"let g:neocomplcache_caching_limit_file_size=50000
let g:neocomplcache_snippets_dir=$VIMHOME +'/snippets'
let g:neocomplcache_max_list=3 "default is 100

set completeopt=menu,preview,longest
" <CR>: close popup 
" <s-CR>: close popup and save indent.
inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "\<CR>"
inoremap <expr><s-CR> pumvisible() ? neocomplcache#close_popup() "\<CR>" : "\<CR>" 
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

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
let g:Powerline_symbols = 'compatible'

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
        \ 'active_filetypes': ['ruby','php','coffeescript']}
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
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size  = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#3e5446 ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#252222 ctermbg=236

