

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
autocmd! bufwritepost vimrc source ~/.vim/vimrc

set nowrap
set tabstop=4
set ts=4
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
colorscheme peachpuff

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

"" NERDtree - file explorer
let NERDTreeShowHidden=1
set <F2>=[12~
noremap <F2> :call ToggleSideBarNERDTree()<CR>

"" Taglist - Show tags in file
set <F3>=[13~
noremap <F3> :call ToggleSideBarTagList()<CR>

let g:local_nerd_tree_open=0
let g:local_tlist_open=0

function! ToggleSideBarNERDTree()
	if g:local_tlist_open
		:TlistClose
		let g:local_tlist_open=0
	endif
	:NERDTreeToggle
	let g:local_nerd_tree_open=1
endfunction
function! ToggleSideBarTagList()
	if g:local_nerd_tree_open
		:NERDTreeClose
		let g:local_nerd_tree_open=0
	endif
	:TlistToggle
	let g:local_tlist_open=1
endfunction

"Supertab completion
let g:SuperTabDefaultCompletionType = 'context'

"Python - shortcuts
map <leader>r :!python %<CR>
map <leader>e :!python -m unittest discover%<CR> 
let python_slow_sync=1
let python_print_as_function=1

"HTML/CSS
autocmd FileType css setlocal tabstop=2 softtabstop=2 shiftwidth=2 
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2

