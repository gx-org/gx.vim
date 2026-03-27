" Vim syntax file
" Language: GX

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword gxKeyword if else while for return func import struct interface
syn keyword gxType int float string bool
syn keyword gxBoolean true false

" Numbers
syn match gxNumber "\v<\d+>"
syn match gxNumber "\v<\d+\.\d*>"

" Strings
syn region gxString start=/\v"/ skip=/\v\\./ end=/\v"/

" Comments
syn match gxComment "\v//.*$"
syn region gxComment start=/\v\/\*/ end=/\v\*\//

" Highlighting Links
hi def link gxKeyword Keyword
hi def link gxType Type
hi def link gxBoolean Boolean
hi def link gxNumber Number
hi def link gxString String
hi def link gxComment Comment

let b:current_syntax = "gx"
