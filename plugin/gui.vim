" ----------------------------------------------------
" GUI settings
" ----------------------------------------------------
" Set extra options when running in GUI mode
if has("gui_running")
  set guifont=Monaco:h14
  set guioptions-=T
  set guioptions+=e
  set guioptions-=r
  set guioptions-=L
  set guitablabel=%M\ %t
  set showtabline=1
  set linespace=3
  set noimd
  set t_Co=256
else
  "set guifont=Courier_New:h10:cANSI
  set guifont=Fixedsys:h10:cANSI
endif
