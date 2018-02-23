if has("autocmd")
  augroup linux
    " Clear all
    autocmd!

    autocmd FileType javascript set tw=120

    " Go back to last edited line
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal! g'\"" |
      \ endif

    " No bell
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=

    autocmd Filetype javascript setlocal ts=4 sw=4 expandtab

    " JavaScript
    " autocmd FileType javascript set formatprg=prettier\ --stdin
    " autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"

    func! DeleteTrailingWS()
      exe "normal mz"
      %s/\s\+$//ge
      exe "normal `z"
    endfunc

    autocmd BufWrite *.js :call DeleteTrailingWS()

  augroup END
endif
