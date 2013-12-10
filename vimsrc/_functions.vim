" Better Diffon/Diffoff
"
" Set up a keymapping from <Leader>df to a function call.
" (Note the function doesn't need to be defined beforehand.)
" Run this mapping silently. That is, when I call this mapping,
" don't bother showing "call DiffToggle()" on the command line.
nnoremap <silent> <Leader>df :call DiffToggle()<CR>

" Define a function called DiffToggle.
" The ! overwrites any existing definition by this name.
function! DiffToggle()
    " Test the setting 'diff', to see if it's on or off.
    " (Any :set option can be tested with &name.
    " See :help expr-option.)
    if &diff
        diffoff
      else
        diffthis
    endif
:endfunction
