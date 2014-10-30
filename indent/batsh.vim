" Vim indent file
" Language: Batsh
" TODO
" This an indent file which does no indentation now

if exists("b:did_indent")
  finish
endif

unlet! b:did_indent
let b:did_indent = 1

setl indentexpr=GetBatshIndent()
setl indentkeys=

" Only define the function once.
if exists("*GetBatshIndent")
  finish
endif

function! GetBatshIndent()      " Disable All Indent
  let cindent = indent(v:lnum)
  return cindent
endf

