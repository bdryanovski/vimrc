if exists('*ExtractSnipsFile')
  call ExtractSnipsFile(g:snippets_dir.'eruby.bootstrap.snippets', 'eruby')
  call ExtractSnipsFile(g:snippets_dir.'html.snippets', 'eruby')
  call ExtractSnips (g:snippets_dir.'html/', 'eruby')

  " Experimental angular snippets
  call ExtractSnips (g:snippets_dir.'angular/', 'javascript')

  " Custom Polymer snippets
  call ExtractSnips(g:snippets_dir . 'polymer/', 'html')
  call ExtractSnips(g:snippets_dir . 'polymer-javascript', 'javascript')
  call ExtractSnips(g:snippets_dir . 'polymer-javascript', 'html')
endif

