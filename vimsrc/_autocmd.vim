if has("autocmd")
  augroup linux

    " Clear all custom autocommands
    autocmd!

    " In text files, always limit the width of text to 98 characters
    autocmd FileType text set tw=98

    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif

    " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
    autocmd BufNewFile,BufReadPre /media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp

    " Switch to working directory of the open file
    autocmd BufEnter * silent! lcd %:p:h

    " Setting compilers
    autocmd BufEnter *.php compiler php
    autocmd BufEnter *.c   compiler gcc
    autocmd BufEnter *.cpp compiler gcc
    autocmd BufEnter *.rb  compiler ruby

    " If editing Gemfile, then run it after save
    " autocmd BufEnter Gemfile RunCommand !bundle install

    " Syntax highlight for files that don't end with *.rb extension - Adding
    " syntax = ruby  
    au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby

    autocmd BufEnter *access.log* set filetype=httplog
    autocmd BufEnter httpd*.conf  set filetype=apache
    autocmd BufRead *.jhtml       set filetype=jhtml
    autocmd BufNewFile,BufRead *.markdown,*.textile,*.md setfiletype octopress

    " Arduino
  	autocmd Filetype arduino set errorformat^=\%-G%.%#/path/to/Arduino/IDE/%.%#
    autocmd BufRead,BufNewFile *.pde setfiletype arduino 

    " Maximise on open on Windows
    if has('win32')
      autocmd GUIEnter * simalt ~x
    endif

    " Hacking the system bell and flash
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=
    

    " Custom filetypes settings: Python, Shell, JSON, Vagrant, CloudFormation
    au FileType python,sh set tabstop=4 shiftwidth=4 softtabstop=4
    au BufRead,BufNewFile *.json setfiletype javascript
    au BufRead,BufNewFile Vagrantfile setfiletype ruby
    "au BufRead,BufNewFile *.template setfiletype javascript

    " Load package.json template when we star a new project.
    autocmd! BufNewFile package.json silent! 0r $VIMHOME/skel/tmpl.package.json

    " Loading templates
    "
    function! LoadTemplate()
      silent! 0r $VIMHOME/skel/tmpl.%:e
      " Highlight %VAR% placeholders with the Todo colour group
      syn match Todo "%\u\+%" containedIn=ALL
    endfunction

    autocmd! BufNewFile * call LoadTemplate()
   
  augroup END
endif
