" -----------------------------------------------------------------------------
" PLUGINS
" -----------------------------------------------------------------------------

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
" Plugin: BufExplorer - easier invoke keys
" -----------------------------------------------------------------------------
nnoremap <leader>bb :BufExplorer<cr>

" -----------------------------------------------------------------------------
" Plugin: NERDTree - keys to toggle NERDTree
" -----------------------------------------------------------------------------
nnoremap <leader>d :NERDTreeToggle<cr>
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeMapActivateNode='<CR>'

" -----------------------------------------------------------------------------
" Plugin: Gist settings
" -----------------------------------------------------------------------------
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1    " Detect file type
let g:gist_open_browser_after_post = 0
let g:gist_browser_command = 'mozilla %URL% &'
let g:gist_put_url_to_clipboard_after_post = 0

" Auth
let g:github_user = 'bdryanovski'
let g:github_token = '17a354605cb3d28d449a7973e1a30050'

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
" Plugin: vim-indent-guides 
" -----------------------------------------------------------------------------
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size  = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#3e5446 ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#252222 ctermbg=236

