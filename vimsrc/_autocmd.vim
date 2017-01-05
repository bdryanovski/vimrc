if has("autocmd")
  augroup linux

    " Clear all custom autocommands
    autocmd!

    " In text files, always limit the width of text to 98 characters
    autocmd FileType text set tw=98
    autocmd FileType javascript set tw=120

    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
          \ if line("'\"") > 0 && line ("'\"") <= line("$") |
          \   exe "normal! g'\"" |
          \ endif

    " Switch to working directory of the open file
    " autocmd BufEnter * silent! lcd %:p:h

    autocmd BufEnter *.tpl                               set filetype=html
    autocmd BufEnter *access.log*                        set filetype=httplog
    autocmd BufNewFile,BufRead *.markdown,*.md           set filetype=markdown
    autocmd BufNewFile,BufRead *.json                    set filetype=javascript

    " Hacking the system bell and flash
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=

    " Be sure that JavaScript always use 2 space = 1 tab
    autocmd Filetype javascript setlocal ts=2 sw=2 expandtab 

    " let terminal resize scale the internal windows
    autocmd VimResized * :wincmd =

    " Delete trailing white space on save, useful for Python and CoffeeScript
    func! DeleteTrailingWS()
      exe "normal mz"
      %s/\s\+$//ge
      exe "normal `z"
    endfunc

    autocmd BufWrite *.js     :call DeleteTrailingWS()

  augroup END

  " @TODO: something new
  if v:version > 701
    autocmd Syntax * call matchadd('TodoRed','\W\zs\(@TODO\)')
    autocmd Syntax * call matchadd('TodoRed','\W\zs\(@todo\)')
    autocmd Syntax * call matchadd('TodoOrange', '\W\zs\(@REFACTOR\)')
    autocmd Syntax * call matchadd('TodoOrange', '\W\zs\(@refactor\)')
    autocmd Syntax * call matchadd('TodoYellow', '\W\zs\(@NOTE\)')
    autocmd Syntax * call matchadd('TodoYellow', '\W\zs\(@note\)')
  endif

endif
