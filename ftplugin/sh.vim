set foldmethod=expr
set foldexpr=getline(v:lnum)=~'^\\s*#.*'?1:0
"set foldenable
set foldtext=substitute(foldtext(),'\*\*','','g')
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Omnifunc is func called when using <C-x><C-o>
"set omnifunc=

" Completefunc is func called when using <C-x><C-u>
"set completefunc=

"call neocomplcache#enable()

