" -----------------------------------------------------------------------------
" PLUGINS
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Source: Adding autocorrect file for most command misspel words
" -----------------------------------------------------------------------------
source $VIMHOME/vimsrc/autocorrect.vim

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
let g:solarized_visibility='normal'


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
let NERDTreeHighlightCursorline = 1
let NERDTreeMapActivateNode='<CR>'

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
" Plugin: Snipmate configuration
" -----------------------------------------------------------------------------
let g:snippets_dir = expand($VIMHOME.'/snippets/')
let g:snips_author = 'Bozhidar Dryanovski'

" -----------------------------------------------------------------------------
" Plugin: neocomplcache
" -----------------------------------------------------------------------------
let g:acp_enableAtStartup = 0 
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion=1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_auto_completion_start_length=3
set completeopt+=longest

let g:neocomplcache_max_list=5 "default is 100


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


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
        let s:php_executable=""
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

" -----------------------------------------------------------------------------
" Plugin: notes (vim-notes)
" -----------------------------------------------------------------------------
let g:notes_directory = $VIMHOME.'\todos'
let g:notes_suffix = '.md'
let g:notes_title_sync='change_title'
let g:notes_smart_quotes=0

