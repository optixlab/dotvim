" Ref http://mirnazim.org/writings/vim-plugins-i-use/
" Following for pathogen. Call before filetype!
call pathogen#infect()
call pathogen#helptags()

" For efficiency, configure CloseTag to load only for html/xml like files.
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" Config solarized Vim with light color
set hidden
set number
set vb t_vb=
set ts=2 sts=2 sw=2 expandtab
syntax on
syntax enable "What's the difference?"
command! Status echo "All systems are go!"

set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

" Markdown to HTML
nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr>

if has("autocmd")
  filetype plugin indent on
endif
