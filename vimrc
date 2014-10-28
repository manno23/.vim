" ==== Pathogen Setup ====

" 	Pathogen is a plugin manager for vim
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" ==== Basic Settings ====

set nocompatible 				" fixes the problem where arrow keys do not function 
set nocp
filetype plugin indent on 		" enable loading indent file or filetype
set term=builtin_ansi			" allows arrow keys to move in insert mode
set showmatch 					" Highlights matching brackets in programming languages
set nohidden
set mouse=a
" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

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
color elflord

" When shift is held lazily during command options
cmap W w
cmap WQ wq
cmap Q q
inoremap <c-CR> <Esc>  "remapping the esc key
map <leader>cd :cd %:p:h<CR> 

" Omni completion
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,ctp set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php,ctp set omnifunc=phpcomplete#CompletePHP
autocmd FileType vim set omnifunc=syntaxcomplete#Complete

"Nerdtree - file explorer
map <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"Gundo - revision history, allows to jump to an old save
map <leader>g :GundoToggle<CR>

"Supertab completion
let g:SuperTabDefaultCompletionType = 'context'

"Python - shortcuts, snippet activations for python and also django
map <leader>r :!python %<CR>
map <leader>e :!python -m unittest discover%<CR> 
let python_slow_sync=1
let python_print_as_function=1

"HTML/CSS
autocmd FileType css setlocal tabstop=2 softtabstop=2 shiftwidth=2 
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2

