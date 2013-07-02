call ExtractSnipsFile(g:snippets_dir.'eruby.bootstrap.snippets', 'eruby')
call ExtractSnipsFile(g:snippets_dir.'html.snippets', 'eruby')
call ExtractSnips (g:snippets_dir.'html/', 'eruby')

" JavaScript TDD
call ExtractSnips(g:snippets_dir.'javascript-tdd/', javascript)

" Experimental angular snippets
call ExtractSnips (g:snippets_dir.'angular/', 'javascript')
