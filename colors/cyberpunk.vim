" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Tai Groot <tai@taigrr.com>
" Last Change:	2021 September 22

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "cyberpunk"
hi Normal						guibg=black	ctermfg=70				guifg=#408000
hi Comment		term=bold					ctermfg=14				guifg=#0eeafa
hi Constant		term=underline				ctermfg=75				guifg=#0197dd
hi Special		term=bold					ctermfg=224				guifg=#cdb1ad
hi Identifier	term=underline	cterm=bold	ctermfg=75				guifg=#0197dd
hi Statement	term=bold					ctermfg=226 gui=bold	guifg=#ffd302
hi PreProc		term=underline				ctermfg=14				guifg=#0eeafa
hi Type			term=underline				ctermfg=226				guifg=#ffd302 gui=bold
hi Function		term=bold					ctermfg=70				guifg=#408000
hi Repeat		term=underline				ctermfg=226				guifg=#ffd302
hi Operator									ctermfg=9				guifg=#FF0000
hi Ignore									ctermfg=black			guifg=bg
hi Error		term=reverse	ctermbg=54	ctermfg=9				guifg=#FF0000	guibg=#0C35BF 
hi Todo			term=standout	ctermbg=75	ctermfg=226				guifg=#0197dd guibg=#ffd302

hi Pmenu           ctermfg=black guifg=black ctermbg=70 guibg='#408000'
hi PmenuSel        ctermfg=14 guifg='#0197DD' ctermbg=226 guibg='#FFD302'

" UI elements
hi LineNr		term=NONE					ctermfg=238				guifg=#444444
hi CursorLineNr	term=bold					ctermfg=226	gui=bold	guifg=#ffd302
hi CursorLine	term=NONE		cterm=NONE	ctermbg=234				guibg=#1a1a1a
hi CursorColumn	term=NONE		cterm=NONE	ctermbg=234				guibg=#1a1a1a
hi ColorColumn	term=NONE					ctermbg=234				guibg=#1a1a1a
hi Visual		term=reverse				ctermbg=238				guibg=#333333
hi VisualNOS	term=reverse				ctermbg=238				guibg=#333333
hi Search		term=reverse	ctermfg=0	ctermbg=226				guifg=black	guibg=#ffd302
hi IncSearch	term=reverse	ctermfg=0	ctermbg=14				guifg=black	guibg=#0eeafa
hi MatchParen	term=reverse	ctermfg=226	ctermbg=238				guifg=#ffd302	guibg=#333333
hi StatusLine	term=bold					ctermfg=70	ctermbg=234	guifg=#408000	guibg=#1a1a1a
hi StatusLineNC	term=NONE					ctermfg=238	ctermbg=234	guifg=#444444	guibg=#1a1a1a
hi VertSplit	term=NONE					ctermfg=238				guifg=#444444
hi Folded		term=NONE					ctermfg=14	ctermbg=234	guifg=#0eeafa	guibg=#1a1a1a
hi FoldColumn	term=NONE					ctermfg=14	ctermbg=234	guifg=#0eeafa	guibg=#1a1a1a
hi SignColumn	term=NONE					ctermbg=NONE			guibg=NONE
hi NonText		term=NONE					ctermfg=238				guifg=#444444
hi SpecialKey	term=NONE					ctermfg=238				guifg=#444444
hi Title		term=bold					ctermfg=226	gui=bold	guifg=#ffd302
hi Directory	term=bold					ctermfg=14				guifg=#0eeafa
hi WildMenu		term=standout	ctermfg=0	ctermbg=226				guifg=black	guibg=#ffd302
hi TabLine		term=NONE					ctermfg=238	ctermbg=234	guifg=#444444	guibg=#1a1a1a
hi TabLineSel	term=bold					ctermfg=70	ctermbg=0	guifg=#408000	guibg=black
hi TabLineFill	term=NONE					ctermbg=234				guibg=#1a1a1a

" Diff
hi DiffAdd		term=bold					ctermbg=22				guibg=#003300
hi DiffChange	term=bold					ctermbg=17				guibg=#000033
hi DiffDelete	term=bold		ctermfg=9	ctermbg=52				guifg=#FF0000	guibg=#330000
hi DiffText		term=reverse				ctermbg=57	gui=bold	guibg=#0C35BF

" Diagnostics (Neovim LSP)
hi DiagnosticError						ctermfg=9				guifg=#FF0000
hi DiagnosticWarn						ctermfg=226				guifg=#ffd302
hi DiagnosticInfo						ctermfg=75				guifg=#0197dd
hi DiagnosticHint						ctermfg=14				guifg=#0eeafa
hi DiagnosticUnderlineError	term=underline	cterm=underline	gui=undercurl	guisp=#FF0000
hi DiagnosticUnderlineWarn	term=underline	cterm=underline	gui=undercurl	guisp=#ffd302
hi DiagnosticUnderlineInfo	term=underline	cterm=underline	gui=undercurl	guisp=#0197dd
hi DiagnosticUnderlineHint	term=underline	cterm=underline	gui=undercurl	guisp=#0eeafa

" Spell
hi SpellBad		term=underline	cterm=underline	gui=undercurl	guisp=#FF0000
hi SpellCap		term=underline	cterm=underline	gui=undercurl	guisp=#0197dd
hi SpellRare	term=underline	cterm=underline	gui=undercurl	guisp=#cdb1ad
hi SpellLocal	term=underline	cterm=underline	gui=undercurl	guisp=#0eeafa

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
