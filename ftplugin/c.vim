" Folding
set foldmethod=expr
set foldexpr=getline(v:lnum)=~'^\\s*\/\/.*'?1:getline(v:lnum)=~'^\\s*\\*.*'?1:getline(v:lnum)=~'^\\s*\/\\*.*'?1:0
"set foldenable
set foldtext=substitute(substitute(foldtext(),'\*\*','','g'),'\/\/','','g')

" Spaces
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab

" Omnifunc is func called when using <C-x><C-o>
"set omnifunc=omni#cpp#complete#Main

" Completefunc is func called when using <C-x><C-u>
"set completefunc=ClangComplete

" Abbreviations
"
iabbr #i #include
iabbr #d #define
iabbr #f #if
iabbr #e #else
iabbr #n #endif
iabbr #p #pragma

" These can be annoying...
"iabbr float float32
"iabbr double float64
"iabbr long int64
"iabbr ulong uint64
"iabbr int int32
"iabbr uint int32
"iabbr short int16
"iabbr ushort uint16
"iabbr uchar uint8
"iabbr schar int8
"iabbr char char

" Shortcuts
"iabbr td typedef
"iabbr st struct
"iabbr ex extern

" Typos
iabbr FLASE FALSE
iabbr RTUE TRUE
iabbr flaot float
iabbr slef self

