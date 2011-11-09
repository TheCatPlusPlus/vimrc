" vim: set ff=unix ft=vim fenc=utf-8:
scriptencoding utf-8
set nocompatible

" local variables and runtime path
let s:this_path    = expand('<sfile>:p:h')
let s:runtime_path = s:this_path . '/vimfiles'
let s:bundle_path  = s:this_path . '/bundles'
let s:rc_path      = s:this_path . '/rc'
let &runtimepath   = s:runtime_path . ',' . &runtimepath

let $PL_VIM_PATH   = s:this_path
let $PL_VIMRC      = expand('<sfile>:p')

call pathogen#infect(s:bundle_path)
call vundle#rc(s:bundle_path)

let s:rc_files = split(glob(s:rc_path.'/*.vim'), '\n')
for rc_file in s:rc_files
    exec 'source '.rc_file
    unlet rc_file
endfor

set secure