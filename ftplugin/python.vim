set foldmethod=expr
set foldexpr=getline(v:lnum)=~'^\\s*#.*'?1:0
"set foldenable
set foldtext=substitute(foldtext(),'\*\*','','g')
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Overwrite the cindent and indentkeys 0# option in insert
inoremap # X<BS># 

" Omnifunc is func called when using <C-x><C-o>
"set omnifunc=pythoncomplete#Complete

" Completefunc is func called when using <C-x><C-u>
"set completefunc=

"IndentGuidesEnable

