""""""""""""""""""""
" NERDTree
" https://github.com/scrooloose/nerdtree
""""""""""""""""""""
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 3.1. Customisation summary
let g:NERDTreeNaturalSort=1
let g:NERDTreeSortHiddenFirst=0
let g:NERDTreeChDirMode=2
let g:NERDTreeHighlightCursorline=1
let g:NERDTreeBookmarksSort=2
let g:NERDTreeNERDTreeMouseMode=3
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=1
let g:NERDTreeSortOrder=['\/$', 'docker-compose\.yml', 'Dockerfile', '\.yml$', '\.toml', '\.go$']
let g:NERDTreeWinSize=31

""""""""""""""""""""
" vim-nerdtree-tabs
" https://github.com/jistr/vim-nerdtree-tabs
""""""""""""""""""""
let g:nerdtree_tabs_open_on_console_startup=1

""""""""""""""""""""
" vim-go
" https://github.com/fatih/vim-go/blob/master/doc/vim-go.txt
""""""""""""""""""""
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_fmt_autosave = 1
let g:go_mod_fmt_autosave = 1
let g:go_snippet_engine = "automatic"
let g:go_autodetect_gopath = 0
let g:go_metalinter_autosave = 1 
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_autoclose = 1
let g:go_asmfmt_autosave = 1 
let g:go_template_autocreate = 1

""""""""""""""""""""
" vim
" :options
""""""""""""""""""""
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
set hlsearch

" 6. multiple windows
set laststatus=2

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
set clipboard=unnamed,autoselect

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

""""""""""""""""""""
" map
""""""""""""""""""""
inoremap <silent> jj <ESC>

nnoremap j gj
nnoremap k gk

syntax enable
