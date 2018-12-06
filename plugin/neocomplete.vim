" need Lua supported vim:
"
" 1. install lua & luajit
"
"     brew install lua luajit
"
" 2. download vim source code - https://github.com/vim/vim
"
"     git clone https://github.com/vim/vim.git ~/vim && cd ~/vim
"     ./configure --with-features=huge --enable-pythoninterp=yes  --enable-cscope --enable-fontset --enable-perlinterp --enable-rubyinterp --with-python-config-:qdir=/usr/lib/python2.7/config --with-luajit --enable-luainterp --with-lua-prefix=/usr/local
"     sudo make
"     sudo make install
"
" 3. check vim with Lua support
"
"     vim -V


let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#sources#dictionary#dictionaries = { 'default' : '', 'vimshell' : $HOME.'/.vimshell_hist', 'scheme' : $HOME.'/.gosh_completions' }
