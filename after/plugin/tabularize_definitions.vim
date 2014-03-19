" This file goes in after/plugin/tabularize.vim

if !has('ruby')
  finish
endif

if exists('*AddTabularPipeline')
	AddTabularPattern! equals       /^[^=]*\zs=/
	AddTabularPattern! ruby_hash    /^[^=>]*\zs=>/
	AddTabularPattern! commas       /,\s*\zs\s/l0
	AddTabularPattern! colons       /^[^:]*:\s*\zs\s/l0

	" Not perfect, causes problems sometimes
	AddTabularPipeline space / \+/
	      \ map(a:lines, "substitute(v:val, ' \+', ' ', 'g')")
	      \   | tabular#TabularizeStrings(a:lines, ' ', 'l0')
endif


