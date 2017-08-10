if &shell =~# 'fish$'
	set shell=sh
endif

noh
set nocompatible
set fileformats=unix
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'dag/vim-fish'
Plugin 'jason-wisnieski/vim-cpp-enhanced-highlight'

syntax enable
filetype plugin indent on

set tabstop=2
set shiftwidth=2
colorscheme default

let g:cpp_class_scope_highlight=1
let g:cpp_experimental_template_highlight=1
let g:cpp_class_decl_highlight=1

" Add a ,hi command to show what the syntax highlighting rules are for
" the text that the cursor is currently on
map ,hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" highlighting not specific to file types
set hlsearch
hi Search term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi SpecialKey ctermfg=1 ctermbg=7
hi ExtraWhitespace ctermbg=1
match ExtraWhitespace /\s\+$\| \+\ze\t\| ^\t*\zs \+/

" set styles to match Visual Studio Code when using Kimbie theme
set cursorline
hi CursorLine cterm=none ctermbg=15

set number
hi LineNr ctermfg=1
hi CursorLineNr ctermfg=1

hi Error term=reverse ctermfg=13 ctermbg=9 guifg=White guibg=Red

hi MatchParen ctermfg=none ctermbg=none cterm=reverse

hi Constant term=underline ctermfg=yellow guifg=Magenta
hi Statement term=bold ctermfg=darkmagenta gui=bold guifg=Brown

hi cppThis term=bold ctermfg=magenta gui=bold guifg=Brown
