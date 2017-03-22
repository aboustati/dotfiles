set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'zeis/vim-kolor'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'epeli/slimux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'chriskempson/base16-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"map leader
let mapleader=","

"Enable textwrapping at 79 columns
set textwidth=79

"Enable folding
set foldmethod=indent
set foldlevel=99

"Enable folding with the space bar
nnoremap <space> za

"See docstrings in folded code
let g:SimpylFold_docstring_preview=1

"Indentation based on PEP 8
au BufNewFile,BufRead *.py
\ set tabstop=4|
\ set softtabstop=4|
\ set shiftwidth=4|
\ set textwidth=79|
\ set expandtab|
\ set autoindent|
\ set fileformat=unix

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/

"Flag white spaces
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.cpp,*.cu match BadWhitespace /\s\+$/

"Use UFT8 encoding
set encoding=utf-8

"Customise YCM
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF

"Python syntax highlighting
let python_highlight_all=1
syntax on

"Set colour scheme
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  let g:kolor_italic=1                    " Enable italic. Default: 1
  let g:kolor_bold=1                      " Enable bold. Default: 1
  let g:kolor_underlined=1                " Enable underline. Default: 0
  let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0
  set background=dark
  colorscheme kolor
endif

"Switch between light and dark themes F5
call togglebg#map("<F5>")

"Hide .pyc files in nerdtree & ctrl+p
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let g:ctrlp_custom_ignore= '\.pyc'


"Access system clipboard
set clipboard=unnamedplus

"Slimux key bindings
map <Leader>s :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>
map <Leader>a :SlimuxShellLast<CR>
map <Leader>k :SlimuxSendKeysLast<CR>

"Slimux options
let g:slimux_select_from_current_window=1

"Disable arrow keys
map <up>    <nop>
map <down>  <nop>
map <left>  <nop>
map <right> <nop>

imap <up>    <nop>
imap <down>  <nop>
imap <left>  <nop>
imap <right> <nop>

"Toggle line numbering
set nu

"Enable vi shorcuts in shell
"set editing-mode vi
