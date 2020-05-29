" VUNDLE START
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" PLUGINS
" Tree view
Plugin 'preservim/nerdtree'

" Colorschemes
Plugin 'flazz/vim-colorschemes'

" Fuzzy search
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Git stuff in gutter
Plugin 'airblade/vim-gitgutter'

" ctags integration
Plugin 'vim-scripts/taglist.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" VUNDLE END

" Toggle NERDTree with Ctrl+\
map <C-Bslash> :NERDTreeToggle<CR>

" Line numbers
set nu

" Syntax highlighting
syntax on

" Color scheme
colorscheme spacegray
" Transparent background
hi Normal guibg=NONE ctermbg=NONE

" Tabs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent

" Disable swap
set noswapfile
