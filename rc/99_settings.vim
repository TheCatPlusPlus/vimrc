" vim: set ff=unix ft=vim fenc=utf-8:

" tagbar settings
let g:tagbar_usearrows = 1
let g:tagbar_autoshowtag = 1

" c-syntax settings
let c_space_errors = 1
let c_no_curly_error = 1

" c-indent settings
set cinoptions+=l1,b1,g0,(s

" indent guides
let g:indent_guides_start_level           = 2
let g:indent_guides_guide_size            = 1
let g:indent_guides_enable_on_vim_startup = 1

" gundo
let g:gundo_width = 60

" NERDTree
let NERDTreeMapUpdir = '\u'

" Powerline
if has("gui_running")
    let g:Powerline_symbols = 'fancy'
else
    let g:Powerline_symbols = 'compatible'
end

if g:pl_environment == 'desktop'
    let g:Powerline_cache_dir = $PL_VIM_PATH . '/cache/'
end

" FuzzyFinder
if g:pl_environment == 'desktop'
    let g:fuf_dataDir = $PL_VIM_PATH . '/cache/fuf/'
end

let g:fuf_keyOpenTabpage = '<CR>'
let g:fuf_keyOpen = '<C-l>'
let g:fuf_modesDisable = ['mrufile', 'mrucmd', 'bookmarkfile', 'bookmarkdir', 'tag', 'buffertag', 'taggedfile', 'jumplist', 'changelist', 'quickfix', 'line']

let g:go#use_vimproc = 0

let g:ctrlp_user_command = {
            \ 'types': {
            \         1: ['.git', 'cd %s && git ls-files -co --exclude-standard']
            \ },
            \ 'ignore': 1
            \ }

let g:racer_experimental_completer = 1

let g:clang_format#detect_style_file = 1
