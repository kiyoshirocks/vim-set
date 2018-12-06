" General Settings

filetype    on
filetype    indent on
filetype    plugin on
filetype    plugin indent on
colorscheme pablo
syntax      enable
syntax      on
hi          Search cterm=NONE ctermbg=24   ctermfg=244
set         nocompatible
set         backspace=indent,eol,start
set         history=1000
set         undolevels=100
set         ruler
set         autoread
set         wrap
set         linebreak
set         nolist
set         hidden
set         linespace=0
set         cursorline
set         nofoldenable
set         number
set         numberwidth=4
set         title
set         showmode
set         nobomb
set         nostartofline
set         laststatus=2
set         clipboard+=unnamed
set         splitright
set         splitbelow
set         scrolloff=4
set         switchbuf=useopen
set         showtabline=2
set         wildmode=longest,list
set         wildmenu
set         key=			                        " disable encryption
set         synmaxcol=128
set         viminfo=			                    " disable .viminfo file
set         ttyfast
set         lazyredraw
set         nobackup
set         noswapfile
set         nowritebackup
set         copyindent
set         ignorecase
set         smartcase
set         smarttab
set         expandtab
set         softtabstop=2
set         shiftwidth=2
set         tabstop=2
set         shortmess=atI
set         t_Co=256
set         background=dark
set         hlsearch
set         incsearch
set         smartindent
set         confirm
set         cmdheight=1
set         showcmd
set         list
set         listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set         lbr
set         fo+=mB
set         mouse=a
set         iskeyword+=_,$,@,%,#
set         t_ti= t_te=

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

" cursorline switched while focus is switched to another split window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" shell setting for RVM
set shell=/bin/sh
