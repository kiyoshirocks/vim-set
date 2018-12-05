
" Key mapping

" set <Leader>
" let mapleader = "\\"

map <silent>        <Leader>\ :noh<cr>
map <leader><space> :FixWhitespace<cr>

" navigating for long lines

map     j      gj
map     k      gk
map     <UP>   gk
map     <DOWN> gj
noremap H      ^
noremap L      $

" add a new line without entering insert mode
nmap <CR> o<Esc>

" let <BackSpace> backspaces
noremap <bs> X

" nerd tree toggle

map  <F1> :NERDTreeToggle<CR>
map! <F1> <Esc>:NERDTreeToggle<CR>

" tagbar
map  <F2> :TagbarToggle<CR>
map! <F2> <Esc>:TagbarToggle<CR>

" toggle wrap
map  <F5> :set wrap! wrap?<CR>
map! <F5> <Esc>:set wrap! wrap?<CR>

map  <F4> :set nonumber! number?<CR>
map! <F4> <Esc>:set nonumber! number?<CR>

" toggle paste mode
set pastetoggle=<F3>

map  <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>
map! <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" nerd commenter
let g:NERDSpaceDelims=1
xmap <c-c>c       <plug>NERDCommenterComment<DOWN>
xmap <c-c>u       <plug>NERDCommenterUncomment<DOWN>
xmap <c-c>s       <plug>NERDCommenterSexy<DOWN>
xmap <c-c>i       <plug>NERDCommenterInvert<DOWN>
xmap <c-c>y       <plug>NERDCommenterYank<DOWN>
xmap <c-c>e       <plug>NERDCommenterToEOL<DOWN>
xmap <c-c><space> <plug>NERDCommenterToggle<DOWN>
nmap cc           <plug>NERDCommenterComment<DOWN>
nmap cu           <plug>NERDCommenterUncomment<DOWN>
nmap cs           <plug>NERDCommenterSexy<DOWN>
nmap ci           <plug>NERDCommenterInvert<DOWN>
nmap cy           <plug>NERDCommenterYank<DOWN>
nmap ce           <plug>NERDCommenterToEOL<DOWN>
nmap c<space>     <plug>NERDCommenterToggle<DOWN>

" tab to spaces : ctrl-t

map  <C-t> :call TabToSpaces()<CR>
map! <C-t> <Esc>:call TabToSpaces()<CR>



" ----------------------------------------------------
" Other Functions
" ----------------------------------------------------

function TabToSpaces()
    retab
    echo "Convert tab to spaces."
endfunction

function SwitchLineBreakingMode()
    if (&wrap == 0)
        set wrap
        echo "Switch to line breaking mode."
    else
        set nowrap
        echo "Switch to one line mode."
    endif
endfunction

" view functions

function IsBinary()
    if (&binary == 0)
        return ""
    else
        return "[Binary] "
    endif
endfunction
function FileSize()
    let bytes = getfsize(expand("%:p"))
    if bytes <= 0
        return "[E] "
    endif
    if bytes < 1024
        return "[" . bytes . "B]"
    elseif bytes < 1048576
        return "[" . (bytes / 1024) . "KB]"
    else
        return "[" . (bytes / 1048576) . "MB]"
    endif
endfunction
