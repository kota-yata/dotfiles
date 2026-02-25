call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'github/copilot.vim'
Plug 'preservim/nerdtree'

call plug#end()

set number

syntax on

set cursorline

nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1 " Show hidden files in NERDTrees
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close Vim if NERDTree is the only window remaining in the only tab.
