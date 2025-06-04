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
