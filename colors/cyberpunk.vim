" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:   Tai Groot <tai@taigrr.com>
" Last Change:  2021 September 22

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "cyberpunk"

" Base groups
hi Comment      term=bold    ctermfg=14 ctermbg=0  guifg=#0eeafa
hi Constant     term=underline ctermfg=75 ctermbg=0  guifg=#0197dd
hi Error        term=reverse ctermfg=9 ctermbg=54 guifg=#FF0000 guibg=#0C35BF
hi Function     term=bold    ctermfg=70  ctermbg=0  guifg=#408000
hi Identifier   term=underline cterm=bold ctermfg=75 ctermbg=0 guifg=#0197dd
hi Ignore       ctermfg=0    ctermbg=0  guifg=bg
hi Normal       ctermfg=70  ctermbg=0  guifg=#408000  guibg=black
hi Operator     ctermfg=9    ctermbg=0  guifg=#FF0000
hi PreProc      term=underline ctermfg=14 ctermbg=0 guifg=#0eeafa
hi Repeat       term=underline ctermfg=226 ctermbg=0 guifg=#ffd302
hi Special      term=bold    ctermfg=224 ctermbg=0 guifg=#cdb1ad
hi Statement    term=bold    ctermfg=226 ctermbg=0 gui=bold guifg=#ffd302
hi Todo         term=standout ctermfg=226 ctermbg=75 guifg=#0197dd guibg=#ffd302
hi Type         term=underline ctermfg=226 ctermbg=0 gui=bold guifg=#ffd302

" Popup menu
hi Pmenu        ctermfg=0 ctermbg=70 guifg=black guibg=#408000
hi PmenuSel     ctermfg=14 ctermbg=226 guifg=#0197DD guibg=#FFD302

" Additional UI groups
hi ColorColumn  ctermbg=54  guibg=#0C35BF
hi CursorColumn ctermbg=70 guibg=#408000
hi CursorLine   ctermbg=70 guibg=#408000
hi CursorLineNr ctermfg=226 ctermbg=0 gui=bold guifg=#ffd302
hi DiffAdd      ctermfg=70  ctermbg=0 guifg=#408000
hi DiffChange   ctermfg=224 ctermbg=0 guifg=#cdb1ad
hi DiffDelete   ctermfg=9   ctermbg=0 guifg=#FF0000
hi DiffText     ctermfg=226 ctermbg=0 guifg=#ffd302
hi Directory    ctermfg=75  ctermbg=0 guifg=#0197dd
hi ErrorMsg     ctermfg=9   ctermbg=54 guifg=#FF0000 guibg=#0C35BF
hi FoldColumn   ctermfg=14  ctermbg=54 guifg=#0eeafa guibg=#0C35BF
hi Folded       ctermfg=14  ctermbg=54 guifg=#0eeafa guibg=#0C35BF
hi IncSearch    ctermfg=226 ctermbg=75 guifg=#ffd302 guibg=#0197dd
hi LineNr       ctermfg=224 ctermbg=0 guifg=#cdb1ad
hi ModeMsg      ctermfg=14  ctermbg=0 gui=bold guifg=#0eeafa
hi MoreMsg      ctermfg=75  ctermbg=0 gui=bold guifg=#0197dd
hi NonText      ctermfg=14  ctermbg=0 guifg=#0eeafa
hi Question     ctermfg=226 ctermbg=0 gui=bold guifg=#ffd302
hi Search       ctermfg=75  ctermbg=226 guifg=#0197dd guibg=#ffd302
hi SignColumn   ctermfg=14  ctermbg=0  guifg=#0eeafa
hi StatusLine   ctermfg=226 ctermbg=54 gui=bold guifg=#ffd302 guibg=#0C35BF
hi StatusLineNC ctermfg=224 ctermbg=54 guifg=#cdb1ad guibg=#0C35BF
hi Underlined   term=underline ctermfg=14 ctermbg=0 guifg=#0eeafa
hi VertSplit    ctermfg=54  ctermbg=54 guifg=#0C35BF guibg=#0C35BF
hi Visual       ctermfg=226 ctermbg=75 guifg=#ffd302 guibg=#0197dd
hi WarningMsg   ctermfg=226 ctermbg=54 guifg=#ffd302 guibg=#0C35BF

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link Boolean         Constant
hi link Character       Constant
hi link Conditional     Repeat
hi link Debug           Special
hi link Define          PreProc
hi link Delimiter       Special
hi link Exception       Statement
hi link Float           Number
hi link Include         PreProc
hi link Keyword         Statement
hi link Label           Statement
hi link Macro           PreProc
hi link Number          Constant
hi link PreCondit       PreProc
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link StorageClass    Type
hi link String          Constant
hi link Structure       Type
hi link Tag             Special
hi link Typedef         Type
