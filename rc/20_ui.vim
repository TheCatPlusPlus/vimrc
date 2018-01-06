" vim: set ff=unix ft=vim fenc=utf-8:
set nowrap
set sidescroll=1
set cmdheight=1

" line numbers
set numberwidth=6
set number
set relativenumber

" cursor position highlighting
if g:pl_environment == 'desktop'
    set cursorline
    set cursorcolumn
end

set showcmd
set hlsearch

" always show tabline and statusline
set showtabline=2
set laststatus=2

" e = tabline
set guioptions=e
if has("gui_win32")
    set guifont=DejaVu_Sans_Mono_for_Powerline:h12
else
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
endif
set linespace=0

syntax on

set nofoldenable

set list
set listchars=tab:▸—,trail:·,extends:»,precedes:«,nbsp:⍽

colorscheme icansee
