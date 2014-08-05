" Ref http://mirnazim.org/writings/vim-plugins-i-use/

call pathogen#infect()
call pathogen#helptags()

" For efficiency, configure CloseTag to load only for html/xml like files.
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" Config solarized Vim with light color
syntax enable
set background=light
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

