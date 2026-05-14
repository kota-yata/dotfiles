call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'github/copilot.vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

set number
set clipboard=unnamedplus,unnamed " Use the system clipboard for all operations (copy/paste)

syntax on

set cursorline

nnoremap <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
let NERDTreeShowHidden = 1 " Show hidden files in NERDTrees
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close Vim if NERDTree is the only window remaining in the only tab.
" enable mouse with NERDTree
set mouse=a
let g:NERDTreeMouseMode=3

" Search with ctrl-f
nnoremap <C-f> :Rg<CR>
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } } " Show preview
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
      \   fzf#vim#with_preview(), <bang>0)

