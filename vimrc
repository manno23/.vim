

" 	Pathogen is a plugin manager for vim
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" ==== Basic Settings ====

set nocompatible 				" fixes the problem where arrow keys do not function 
set nocp
filetype plugin indent on 		" enable loading indent file or filetype
set term=builtin_ansi			" allows arrow keys to move in insert mode
set showmatch 					" Highlights matching brackets in programming languages
set nohidden
set mouse=a

set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=4  				
set autoindent  				
set smartindent  				
set foldlevel=99
" Save folds when I exit vi
set viewoptions=folds
au BufWinLeave ?* silent! mkview 1
au BufWinEnter ?* silent! loadview 1


" ==== Colour Scheme ====
syntax enable
colorscheme	elflord

" Omni completion
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,ctp set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php,ctp set omnifunc=phpcomplete#CompletePHP
autocmd FileType vim set omnifunc=syntaxcomplete#Complete

"Python - shortcuts, snippet activations for python and also django
map <leader>r :!python %<CR>
map <leader>e :!python -m unittest discover%<CR> 
let python_slow_sync=1
let python_print_as_function=1
let g:pydoc_window_lines=0.5

"HTML/CSS
autocmd FileType css setlocal tabstop=2 softtabstop=2 shiftwidth=2 
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2

"Taglist
nnoremap <leader>g :TlistToggle<CR>
