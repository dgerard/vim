" Vim color file
"
" Author: Daniel Gerard
"

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "minimal"

highlight Normal          guifg=#000000 guibg=#FFFFFF gui=none
highlight NonText         guifg=#2B91AF guibg=#FFFFFF gui=none
highlight LineNr          guifg=#000000 guibg=#EEEEEE gui=bold
highlight DiffAdd                       guibg=#D7E3BC
highlight DiffChange      guifg=#000000 guibg=#FFFFCE
highlight DiffDelete      guifg=#000000 guibg=#FFCCCC
highlight DiffText                      guibg=#FFFF00 gui=bold

highlight Character       guifg=#000000
highlight Comment         guifg=#000000               gui=bold
highlight Conditional     guifg=#000000
highlight Constant        guifg=#000000
highlight Error           guifg=#FF0000 guibg=#FFFFFF gui=reverse
highlight Float           guifg=#000000
highlight Function        guifg=#000000
highlight Identifier      guifg=#000000
highlight Label           guifg=#000000
highlight Number          guifg=#000000
highlight Operator        guifg=#000000
highlight PreProc         guifg=#000000
highlight Repeat          guifg=#000000
highlight Special         guifg=#000000               gui=none
highlight SpecialComment  guifg=#000000               gui=none
highlight SpecialKey      guifg=#2B91AF
highlight Statement       guifg=#000000               gui=none
highlight String          guifg=#000000
highlight Todo            guifg=#000000               gui=bold
highlight Type            guifg=#000000               gui=none

highlight Visual          guifg=#000000 guibg=#ADD6FF gui=none
highlight MatchParen      guifg=#000000 guibg=#CCCCCC
highlight CursorLine                    guibg=#EEEEEE
highlight CursorColumn                  guibg=#EEEEEE
highlight IncSearch       guifg=#F0B445 guibg=#000000
highlight Search          guifg=#000000 guibg=#F0B445

" vim:et:ff=unix:tw=0:ts=2:sw=2
