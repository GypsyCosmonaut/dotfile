set nocompatible
syntax on
filetype plugin on
set background=dark
set showcmd
set showmatch
set incsearch
set number
set cursorline
"set cursorcolumn
set hlsearch

set path+=**
set wildmenu

command! MakeTags !ctags -R .

"highlight LineNr ctermfg=grey
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

highlight LineNr ctermfg=Grey ctermbg=Black
highlight StatusLine ctermbg=Yellow ctermfg=Yellow

" use 4 spaces for tabs
"set tabstop=4 softtabstop=4 shiftwidth=4

" display indentation guides
"set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×

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
