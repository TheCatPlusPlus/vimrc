" vim: set ff=unix ft=vim fenc=utf-8:
scriptencoding utf-8
set encoding=utf-8
set termencoding=utf-8
set nocompatible

" remove all autocommands
autocmd!

" local variables and runtime path
let s:this_path     = expand('<sfile>:p:h')
let s:runtime_path  = s:this_path . '/vimfiles'
let s:bundle_path   = s:this_path . '/bundles'
let s:rc_path       = s:this_path . '/rc'
let &runtimepath    = s:runtime_path . ',' . &runtimepath
let g:vimball_home  = s:runtime_path

let $PL_VIM_PATH    = s:this_path
let $PL_VIMRC       = expand('<sfile>:p')
let $PL_BUNDLE_PATH = s:bundle_path

call pathogen#infect(s:bundle_path . '/{}')
call pathogen#helptags()

let &runtimepath .= ',' . s:runtime_path . '/after'

let s:rc_files = split(glob(s:rc_path.'/*.vim'), '\n')
for rc_file in s:rc_files
    exec 'source '.rc_file
    unlet rc_file
endfor

set secure
