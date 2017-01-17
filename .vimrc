set ts=4
set sw=4
set noswapfile
if has("syntax")
  syntax on
  colorscheme elflord
  highlight ExtraWhitespace ctermbg=red guibg=red
  " Show trailing whitespace:
  :match ExtraWhitespace /\s\+$/
  " Show trailing whitespace and spaces before a tab:
  :match ExtraWhitespace /\s\+$\| \+\ze\t/
  " Show tabs that are not at the start of a line:
  ":match ExtraWhitespace /[^\t]\zs\t\+/
  " Show spaces used for indenting (so you use only tabs for indenting).
  ":match ExtraWhitespace /^\t*\zs \+/
endif
