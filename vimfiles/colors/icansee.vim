" Original: John Rhee  <jrhee75@gmail.com>
" Note: modified, I like it better this way. -pl

hi clear
set background=dark

if exists("syntax_on")
    syntax reset
endif

hi Comment      guifg=DarkGray
hi Constant     guifg=Cyan                      gui=NONE
hi Cursor       guifg=Black      guibg=fg
hi CursorColumn                  guibg=#202020
hi CursorLine                    guibg=#202020
hi Directory    guifg=Cyan
hi Error        guifg=White      guibg=Red
hi ErrorMsg     guifg=White      guibg=Red
hi Identifier   guifg=Cyan
hi Ignore       guifg=bg
hi IncSearch                                    gui=reverse
hi LineNr       guifg=DarkYellow
hi ModeMsg                                      gui=bold
hi MoreMsg      guifg=SeaGreen                  gui=bold
hi NonText      guifg=DarkGreen                 gui=bold
hi Normal       guifg=Gray       guibg=Black
hi PreProc      guifg=#C53A3A
hi Question     guifg=Green                     gui=bold
hi Search       guifg=White      guibg=#C53A3A  gui=bold
hi Special      guifg=Red
hi SpecialKey   guifg=#222222
hi Statement    guifg=Yellow                    gui=NONE
hi StatusLine   guifg=Black      guibg=Grey     gui=NONE
hi StatusLineNC guifg=Black      guibg=#555555  gui=NONE
hi Title        guifg=White                     gui=bold
hi Todo         guifg=White      guibg=#555500
hi Type         guifg=Green                     gui=none
hi Visual       guifg=White      guibg=DarkGreen
hi WarningMsg   guifg=Red

hi User1        guifg=#C53A3A    guibg=Grey

hi Pmenu                         guibg=Brown

let g:colors_name = "icansee"
