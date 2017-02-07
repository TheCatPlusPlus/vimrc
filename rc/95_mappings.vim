" parts of this file are based on mswin.vim

" leaders
let mapleader=','
let maplocalleader='\'

" backspace in Visual mode deletes selection
vnoremap <BS> d

" cut, copy, paste
vnoremap <C-X> "+x
vnoremap <C-C> "+y
map      <C-V> "+gP
cmap     <C-V> <C-R>+

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.
exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q> <C-V>

" Use CTRL-S for saving, also in Insert mode
noremap  <C-S> :write<CR>
vnoremap <C-S> <C-C>:write<CR>
inoremap <C-S> <C-O>:write<CR>

" undo, redo
noremap  <C-Z> u
inoremap <C-Z> <C-O>u
noremap  <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

" CTRL-A is Select all
noremap  <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" CTRL-W, u is move up window-wise
" CTRL-W, k is move right
nnoremap <C-W>u <C-W>k
inoremap <C-W>u <C-O><C-W>k
nnoremap <C-W>k <C-W>l
inoremap <C-W>k <C-O><C-W>l
nnoremap <C-W>l <NOP>
inoremap <C-W>l <NOP>

" spellchecking
nnoremap <Leader>s :set spell!<CR>

" tagbar
nnoremap <Leader>l :TagbarToggle<CR>

" gundo
nnoremap <Leader>u :GundoToggle<CR>

" arrow keys (not all of them though)
inoremap <C-Left>  <NOP>
inoremap <C-Right> <NOP>
inoremap <C-Up>    <NOP>
inoremap <C-Down>  <NOP>
noremap  <C-Left>  <NOP>
noremap  <C-Right> <NOP>

" text bubbling
nmap <C-Up>   [e
nmap <C-Down> ]e
vmap <C-Up>   [egv
vmap <C-Down> ]egv

" make hjkl be more like arrows
" remap u to mean 'up', k to mean 'right', and disable l
noremap k l
noremap u gk
noremap j gj
noremap l <NOP>

" quick nohls
nnoremap <Leader><Space> :nohls<CR>

" move to matching parens
nmap <Tab> %
vmap <Tab> %

nnoremap ; :

" window navigation with <C-uhjk>
" window movement with <A-uhjk>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-u> <C-w>k
noremap <C-k> <C-w>l
noremap <A-h> <C-w>H
noremap <A-j> <C-w>J
noremap <A-u> <C-w>K
noremap <A-k> <C-w>L

" ,W to clear trailing whitespace
nnoremap <Leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" ,v to reselect pasted text
nnoremap <Leader>v V`]

" ,D to change cwd to current file's
" \D to change local cwd to current file's
nnoremap <Leader>D      :cd %:p:h<CR>
nnoremap <LocalLeader>D :lcd %:p:h<CR>

" kill ex mode
nnoremap Q <NOP>
nnoremap gQ <NOP>

" %% — current file directory in command-line mode
cnoremap %% <C-R>=expand('%:h').'/'<CR>
" ,f — open file tree using %%
" ,F — open file tree in cwd
nmap <Leader>f :NERDTree %%<CR>
nmap <Leader>F :NERDTree .<CR>

" =a= to align on first = (assignments)
" =a: to align after :
" =a, to align after ,
nmap =a= :Tab /^[^=]*\zs=/l1l1<CR>
vmap =a= :Tab /^[^=]*\zs=/l1l1<CR>
nmap =a: :Tab /:\zs/l0l1<CR>
vmap =a: :Tab /:\zs/l0l1<CR>
nmap =a, :Tab /,\zs/l0l1<CR>
vmap =a, :Tab /,\zs/l0l1<CR>

" Kill Shift-j
nnoremap <S-j> <NOP>
vnoremap <S-j> <NOP>

" omnicomplete
inoremap <C-Space> <C-x><C-o>

" don't move the cursor after exiting insert mode
inoremap <Esc> <Esc>g`^

map <C-o> <Plug>(ctrlp)
map <C-p> <Plug>(ctrlp)
