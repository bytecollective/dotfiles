call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" use the colorscheme with the name 
" located in ~/.vim/colors/
colorscheme sorcerer

" use , as leader
let mapleader=','

set encoding=utf-8
set fileencoding=utf-8
set softtabstop=4
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set expandtab
set nohls
set nocompatible " use vim settings, rather then vi settings
set ls=2  " always show status line
set ruler " always show cursor position
set number " always show line numbers
set hlsearch " always highlight search results
set incsearch " always use incremental search
set ignorecase " always ignore case when searching
set nobackup " do not create backup files
set noswapfile " do not create .swp files
set showcmd " show incomplete commands
set guioptions-=L " no left scrollbar
set guioptions-=r " no right scrollbar
set guioptions-=M " no menu bar
set guioptions-=T " no toolbar
set wildignore+=*.pyc

" leader key shortcuts
map <leader>w :w<cr>
map <leader>q :q<cr>
map <leader>h :sp<cr>
map <leader>v :vs<cr>
nnoremap <esc> :noh<return><esc>

" remap C-W C-<key> to C-<key> for
" moving between splits
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

" Remap the tab key to do autocompletion or indentation depending on the
" context (from http://www.vim.org/tips/tip.php?tip_id=102)
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

filetype on            " enables filetype detection
filetype plugin indent on     " enables filetype specific plugins
