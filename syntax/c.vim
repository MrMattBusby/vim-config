syn keyword cType int8 uint8 int16 uint16 int32 uint32 float32 float64 int64 uint64

" Custom types ending in _t
syn match cCusType "\<[a-zA-Z0-9_]*_t\>"
syn match cCusType "\<[a-zA-Z0-9_]*_e\>"
syn match cCusType "\<[a-zA-Z0-9_]*_s\>"
hi def link cCusType cType

" Make Note a todo keyword
syn keyword cTodo contained Note NOTE REMOVEME WARNING WAG RECHECK

" C# /++ type highlighting
syn keyword Boolean true false NULL TRUE FALSE
syn keyword Statement namespace stderr stdin stdout new this delete

" NOTE: Must escape '/' because it marks start/end of pattern, as well as '*'
"      for preceding atom, '^' for end of string, '.' for anything marker

" Number
syn match cCusNum display   /0x[0-9a-fA-F]\+/
hi link cCusNum Number

" Dereferences
syn region cCusDeref display start=/->/ end=/\<[a-zA-Z_]/he=e-1
syn region cCusDeref display start=/\./ end=/\<[a-zA-Z_]/he=e-1
"syn region cCusDeref display start=/\*/ end=/\<[a-zA-Z_]/he=e-1
hi link cCusDeref Type

" References
syn match cCusRef display   /&\</
hi link cCusRef PreProc

" Assignment operator 
" highlighting
syn match cCusOps display   /[ \s]-=[\s \n]/
syn match cCusOps display   /[ \s]+=[\s \n]/
syn match cCusOps display   /[ \s]\*=[\s \n]/
syn match cCusOps display   /[ \s]\/=[\s \n]/
syn match cCusOps display   /[ \s]%=[\s \n]/
syn match cCusOps display   /[ \s]|=[\s \n]/
syn match cCusOps display   /[ \s]\^=[\s \n]/
syn match cCusOps display   /[ \s]&=[\s \n]/
syn match cCusOps display   /[ \s]>>=[\s \n]/
syn match cCusOps display   /[ \s]<<=[\s \n]/
syn match cCusOps display   /[ \s]\~=[\s \n]/
syn match cCusOps display   /[ \s]=[\s \n]/
hi link cCusOps Boolean

" Arithmatic/bitwise operator 
" highlighting
syn match cCusOpsB display  /[ \s]+[\s \n]/
syn match cCusOpsB display  /[ \s]-[\s \n]/
"syn match cCusOpsB display  /[ \s]\*[\s \n]/
syn match cCusOpsB display  /[ \s]\/[\s \n]/
syn match cCusOpsB display  /[ \s]%[\s \n]/
syn match cCusOpsB display  /++/
syn match cCusOpsB display  /--/
syn match cCusOpsB display  /[ \s]\~[\s \n]/
syn match cCusOpsB display  /[ \s]&[\s \n]/
syn match cCusOpsB display  /[ \s]|[\s \n]/
syn match cCusOpsB display  /[ \s]\^[\s \n]/
syn match cCusOpsB display  /[ \s]<<[\s \n]/
syn match cCusOpsB display  /[ \s]>>[\s \n]/
hi link cCusOpsB Special

" Comparison/logic operator 
" highlighting
syn match cCusOpsC display  /[ \s]==[\s \n]/
syn match cCusOpsC display  /[ \s]!=[\s \n]/
syn match cCusOpsC display  /[ \s]>[\s \n]/
syn match cCusOpsC display  /[ \s]<[\s \n]/
syn match cCusOpsC display  /[ \s]>=[\s \n]/
syn match cCusOpsC display  /[ \s]<=[\s \n]/
syn match cCusOpsC display  /[ \s]![\s \n]/
syn match cCusOpsC display  /[ \s]&&[\s \n]/
syn match cCusOpsC display  /[ \s]||[\s \n]/
syn match cCusOpsC display  /[ \s]:[\s \n]/
syn match cCusOpsC display  /[ \s]?[\s \n]/
hi link cCusOpsC Operator

" Rainbowparenthesis
"syn region level1 matchgroup=level1c start=/(/ end=/)/ contains=TOP,level1,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
"syn region level2 matchgroup=level2c start=/(/ end=/)/ contains=TOP,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
"syn region level3 matchgroup=level3c start=/(/ end=/)/ contains=TOP,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
"syn region level4 matchgroup=level4c start=/(/ end=/)/ contains=TOP,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
"syn region level5 matchgroup=level5c start=/(/ end=/)/ contains=TOP,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
"syn region level6 matchgroup=level6c start=/(/ end=/)/ contains=TOP,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
"syn region level7 matchgroup=level7c start=/(/ end=/)/ contains=TOP,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
"syn region level8 matchgroup=level8c start=/(/ end=/)/ contains=TOP,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
"syn region level9 matchgroup=level9c start=/(/ end=/)/ contains=TOP,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
"syn region level10 matchgroup=level10c start=/(/ end=/)/ contains=TOP,level10,level11,level12,level13,level14,level15, level16,NoInParens
"syn region level11 matchgroup=level11c start=/(/ end=/)/ contains=TOP,level11,level12,level13,level14,level15, level16,NoInParens
"syn region level12 matchgroup=level12c start=/(/ end=/)/ contains=TOP,level12,level13,level14,level15, level16,NoInParens
"syn region level13 matchgroup=level13c start=/(/ end=/)/ contains=TOP,level13,level14,level15, level16,NoInParens
"syn region level14 matchgroup=level14c start=/(/ end=/)/ contains=TOP,level14,level15, level16,NoInParens
"syn region level15 matchgroup=level15c start=/(/ end=/)/ contains=TOP,level15, level16,NoInParens
"syn region level16 matchgroup=level16c start=/(/ end=/)/ contains=TOP,level16,NoInParens
