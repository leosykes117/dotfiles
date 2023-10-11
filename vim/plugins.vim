set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plug-ins
Plugin 'tpope/vim-fugitive'                 " Fugitive

" Colorschemes
Plugin 'morhetz/gruvbox'                    " gruvbox
Plugin 'sainnhe/gruvbox-material'           " gruvbox-material

" Finish Vundle initialization
call vundle#end()            " required
filetype plugin indent on    " required
