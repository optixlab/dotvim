" Ref http://mirnazim.org/writings/vim-plugins-i-use/
" Following for pathogen. Call before filetype!
call pathogen#infect()
call pathogen#helptags()

" Customization from 
" http://stackoverflow.com/questions/9108713/solarized-theme-on-vim-terminator-ubuntu-11-10
" options for gui

if has('gui_running')
    set guifont=Ubuntu\ Mono\ 12
    set guioptions-=T " no toolbar
endif

" No-brainer options
filetype plugin on
set nocompatible
syntax on

" omni for java
autocmd Filetype java setlocal omnifunc=javacomplete#Complete

" Leader key is comma
let mapleader = ","

" Mouse compatibility
set mouse=a

" Line numbers
set number

" Colors
if has('gui_running')
  colorscheme solarized
  set background=dark
else
  set background=light
endif

call togglebg#map("<F5>")

" Insert a single space
nmap <Space> i_<Esc>r

" Nice Python tab settings
set tabstop=2
set shiftwidth=2
set smarttab

" End Customization from the above Ref

" From VimCast - superceded by this above Terminator based solarized solution

" For efficiency, configure CloseTag to load only for html/xml like files.
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" Config solarized Vim with light color
" set hidden
" set number
" set vb t_vb=
" set ts=2 sts=2 sw=2 expandtab
" syntax on
" syntax enable "What's the difference?"
" command! Status echo "All systems are go!"

" set background=dark
" let g:solarized_termtrans=1
" let g:solarized_termcolors=256
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"
" colorscheme solarized

" Markdown to HTML
nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr>

" Set gvim tab label. Use :help 'statusline' for options
set guitablabel=%t

if has("autocmd")
   filetype plugin indent on
endif
