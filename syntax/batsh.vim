" Vim syntax file
" Language: Batsh

if exists("b:current_syntax")
  finish
endif

unlet! b:current_syntax

syn keyword batshKeyword int float
syn keyword batshKeyword if else while function global return
" Built-in functions
syn keyword batshBuiltInFunction print println call bash batch readdir exists
" Built-in types
syn match batshNumber "\v[0-9\.]*"
syn keyword batshBool true false
syn region batshString start=/\v"/ skip=/\v\\./ end=/\v"/

" Operators
syn match batshOperator "\v\+"
syn match batshOperator "\v-"
syn match batshOperator "\v\*"
syn match batshOperator "\v/"
syn match batshOperator "\v\%"
syn match batshOperator "\v\!"
syn match batshOperator "\v\+\+"
syn match batshOperator "\v\="
syn match batshOperator "\v\=\="
syn match batshOperator "\v\!\="
syn match batshOperator "\v\=\=\="
syn match batshOperator "\v\!\=\="
syn match batshOperator "\v\>"
syn match batshOperator "\v\>\="
syn match batshOperator "\v\<"
syn match batshOperator "\v\<\="

" Comment
" It must be put after operator for '/'
syn match batshComment "\v//.*$"

" highlights
if version >= 508
  hi link batshKeyword Keyword
  hi link batshBuiltInFunction Function
  hi link batshBool Boolean
  hi link batshOperator Operator
  hi link batshComment Comment
  hi link batshNumber Number
  hi link batshString String
endif

let b:current_syntax = "batsh"
