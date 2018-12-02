set nocompatible
set laststatus=2
syntax on
filetype plugin on
set background=dark
set showcmd
set showmatch
set incsearch
set number relativenumber
"set spell
set cursorline
hi CursorLine cterm=underline ctermbg=none ctermfg=none
set cursorcolumn
highlight cursorcolumn cterm=none ctermbg=darkgrey ctermfg=white
set hlsearch
set list
set listchars=tab:▸-,eol:¬,trail:˺,nbsp:█,extends:»,precedes:«,space:˙
highlight LineNr ctermfg=Grey ctermbg=Black
highlight StatusLine ctermbg=Black ctermfg=Green

fun!˙HumanSize(bytes)˙abort
˙˙˙˙let˙l:bytes˙=˙a:bytes
˙˙˙˙let˙l:sizes˙=˙['B',˙'KiB',˙'MiB',˙'GiB']
˙˙˙˙let˙l:i˙=˙0
˙˙˙˙while˙l:bytes˙>=˙1024
˙˙˙˙˙˙˙˙let˙l:bytes˙=˙l:bytes˙/˙1024.0
˙˙˙˙˙˙˙˙let˙l:i˙+=˙1
˙˙˙˙endwhile
˙˙˙˙return˙printf('%.1f%s',˙l:bytes,˙l:sizes[l:i])
endfun

let˙&statusline='%f˙%h%w%m%r˙%=%(%y˙˙˙˙%{&ff}    %{&fileencoding?&fileencoding:&encoding}˙˙˙˙%l/%L˙˙˙˙%c%V˙[%o,%O]˙˙˙˙0x%B˙˙˙˙%{HumanSize(line2byte("$")+len(getline("$")))}˙˙˙˙%p%%%)'
"let˙&rulerformat='%45(%l,%c%V˙˙˙˙%L˙˙˙˙0x%B˙˙˙˙%{HumanSize(line2byte("$")˙+˙len(getline("$")))}˙˙˙˙%p%%%)'
"set˙rulerformat=%45(%l,%c%V\˙\˙\˙\˙%L\˙\˙\˙\˙0x%B\˙\˙\˙\˙%{HumanSize(line2byte('$')+len(getline('$')))}\˙\˙\˙\˙%p%%%)

set cryptmethod=blowfish2

set ignorecase
set smartcase

set foldenable
set foldcolumn=4

#set autoindent
#set smartindent
#set softtabstop=4
#set shiftwidth=4
set tabstop=4
set expandtab


set foldcolumn=4      "set fdc=4
set foldmethod=indent "set fdm=indent

"set path+=**
set wildmenu

"set bomb
"set fileencoding
"set fileencoding=ucs-bom,utf-8,latin1

"command! MakeTags !ctags -R .

"colorscheme morning
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" use 4 spaces for tabs
"set tabstop=4 softtabstop=4 shiftwidth=4

" convert spaces to tabs when reading file
"autocmd! bufreadpost * set noexpandtab | retab! 4

" convert tabs to spaces before writing file
"autocmd! bufwritepre * set expandtab | retab! 4

" convert spaces to tabs after writing file (to show guides again)
"autocmd! bufwritepost * set noexpandtab | retab! 4

"NeoBundle 'haya14busa/incsearch.vim'
"Plugin 'haya14busa/incsearch.vim'
"Plug 'haya14busa/incsearch.vim'
"plugin pathogen
