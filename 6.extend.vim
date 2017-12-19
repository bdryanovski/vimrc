"
" Search in all open files
" :SearchAll var\d\+
"
" @source: https://vimrcfu.com/snippet/234
"
fun! s:search_open_files(pattern)
  let l:files = map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'fnameescape(bufname(v:val))')
  try
    silent noautocmd execute "vimgrep /" . a:pattern . "/gj " . join(l:files)
  catch /^Vim\%((\a\+)\)\=:E480/
    echomsg "No match"
  endtry
  bo cwindow
endf

command! -nargs=1 SearchAll call <sid>search_open_files(<q-args>)
