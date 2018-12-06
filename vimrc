" execute pathogen#infect()
" syntax on
" filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""
" custom key binding reference:
" <F1>  NERDTree    <F2>  TagBar
" <F3>  Pastemode   <F4>  NumToggle
" <F5>  WrapToggle  <F6>  SyntaxToggle
" <F7>  MouseToggle <F8>  N/A
" <F9>  N/A         <F10> N/A
" <F11> N/A         <F12> N/A
" <Leader> : \
"
" NERDCommenter:
" cc - Comment       cu - Uncomment cs - CommnetSexy
" ci - InvertComment cy - Yank      ce - ToEOL
"
" move between window panes:
" ctrl + h j k l (to left, down, up, right)
"
" convert tab to space:
" ctrl + t

""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting start
""""""""""""""""""""""""""""""""""""""""""""""""""
set      nocompatible
set      rtp+=~/.vim/bundle/Vundle.vim
call     vundle#begin()
filetype off

Plugin 'VundleVim/Vundle.vim'

" Add your plugins here

Plugin 'vim-scripts/L9'
Plugin 'tomtom/tlib_vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'

Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'vim-syntastic/syntastic'

Plugin 'kchmck/vim-coffee-script'
Plugin 'Shougo/neocomplete.vim'

Plugin 'w0rp/ale'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'bronson/vim-trailing-whitespace'
Plugin 'junegunn/vim-easy-align'

filetype plugin indent on
call     vundle#end()
