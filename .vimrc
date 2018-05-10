"""""""""""""""""""""""""""""""""""SETUP_VUNDLE""""""""""""""""""""""""""""""""
" Set up Vundle first by cloning git repo:
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here
Plugin 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"filetype plugin on  " filetype specific settings
"filetype indent on  " indents based on filetype

" remap controls for switching between windows
nnoremap <C-down> <C-W><C-J>
nnoremap <C-up> <C-W><C-K>
nnoremap <C-right> <C-W><C-L>
nnoremap <C-left> <C-W><C-H>

set autoindent      " use previous line indent for new line in unknowm filetype
set confirm         " provide save dialogue
set number          " show line numbers
set shiftwidth=4    " TAB length for read file 
set softtabstop=4   " number of spaces inserted per TAB
set expandtab       " TABs are spaces
set cmdheight=2
set colorcolumn=80
set omnifunc=syntaxcomplete#Complete

highlight ColorColumn ctermbg=black  guibg=black

au BufFilePre,BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead *.md set spell spelllang=en_gb
