set foldmethod=expr
set foldexpr=getline(v:lnum)=~'^\\s*--.*'?1:0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
