inoremap <silent> jj <ESC>

let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden = 1
let g:nerdtree_tabs_open_on_console_startup=1

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

":options
" 1. important
" 2. moving around, searching and patterns
set whichwrap=b,s,h,l
set nostartofline
set wrapscan
set incsearch

" 3. tags
" 4. displaying text
"set nowrap
set breakindent
set number

" 5. syntax, highlighting and spelling
set background=dark
set syntax=ON
set hlsearch

" 6. multiple windows
set laststatus=2
"set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'

" 7. multiple tab pages
set showtabline=2

" 8. terminal
" 9. using the mouse
set mouse=a
set mousemodel=popup_setpos

" 10. printing
" 11. messages and info
set showcmd
set ruler
set noerrorbells
set visualbell
set belloff=
set helplang=ja

" 12. selecting text
set clipboard=unnamed

" 13. editing text
set showmatch

" 14. tabs and indenting
set autoindent
set smartindent

" 15. folding
" 16. diff mode
" 17. mapping
" 18. reading and writing files
set autoread

" 19. the swap file
set noswapfile

" 20. command line editing
set wildmenu
" 21. executing external commands
" 22. running make and jumping to errors
" 23. language specific
" 24. multi-byte characters
" 25. various

nnoremap j gj
nnoremap k gk

syntax enable