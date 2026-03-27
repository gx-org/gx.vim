" Vim syntax file
" Language: GX

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword gxKeyword if else for return func import package struct var type range interface
syn keyword gxType bfloat16 uint8 uint16 uint32 uint64 int8 int16 int32 int64 float32 float64 string bool intlen intidx
syn keyword gxBoolean true false

" Numbers
syn match gxNumber "\v<\d+>"
syn match gxNumber "\v<\d+\.\d*>"

" Strings
syn region gxString start=/\v"/ skip=/\v\\./ end=/\v"/
syn region gxString start=/\v`/ skip=/\v\\./ end=/\v`/

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
