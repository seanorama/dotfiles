" for pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on
set sessionoptions-=options

" ui
let g:airline_powerline_fonts=1

if has('gui_running')
    " Use the Solarized dark or light theme
    set background=light
    colorscheme solarized
    " Use 14pt Monaco
    set guifont=Monaco:h14
    set guifont=Monaco\ for\ Powerline:h14
    " Use 18pt Inconsolata
    set guifont=Inconsolata\ for\ Powerline:h18
    " Better line-height
    set linespace=4
else
    set background=dark
endif
