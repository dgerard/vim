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

hi Normal          guifg=#000000 guibg=#FFFFFF gui=none
hi NonText         guifg=#2B91AF guibg=#FFFFFF gui=none
hi LineNr          guifg=#000000 guibg=#EEEEEE gui=bold
hi DiffAdd                       guibg=#D7E3BC
hi DiffChange      guifg=#000000 guibg=#FFFFCE
hi DiffDelete      guifg=#000000 guibg=#FFCCCC
hi DiffText                      guibg=#FFFF00 gui=bold

hi Character       guifg=#000000
hi Comment         guifg=#000000               gui=bold
hi Conditional     guifg=#000000
hi Constant        guifg=#000000
hi Error           guifg=#FF0000 guibg=#FFFFFF gui=reverse
hi Float           guifg=#000000
hi Function        guifg=#000000
hi Identifier      guifg=#000000
hi Label           guifg=#000000
hi Number          guifg=#000000
hi Operator        guifg=#000000
hi PreProc         guifg=#000000
hi Repeat          guifg=#000000
hi Special         guifg=#000000               gui=none
hi SpecialComment  guifg=#000000               gui=none
hi SpecialKey      guifg=#2B91AF
hi Statement       guifg=#000000               gui=none
hi String          guifg=#000000
hi Todo            guifg=#000000 guibg=#FFFFFF gui=bold
hi Type            guifg=#000000               gui=none
hi Title           guifg=#000000               gui=none
hi Underlined      guifg=#000000 guibg=#FFFFFF gui=none

hi Visual          guifg=#000000 guibg=#ADD6FF gui=none
hi MatchParen      guifg=#000000 guibg=#CCCCCC
hi CursorLine                    guibg=#EEEEEE
hi CursorColumn                  guibg=#EEEEEE
hi IncSearch       guifg=#F0B445 guibg=#000000
hi Search          guifg=#000000 guibg=#F0B445

hi Pmenu           guifg=#000000 guibg=#EEEEEE
hi PmenuSel                      guibg=#ADD6FF
hi PmenuSbar                     guibg=#CCCCCC
hi PmenuThumb                    guibg=#000000

" vim:et:ff=unix:tw=0:ts=2:sw=2
