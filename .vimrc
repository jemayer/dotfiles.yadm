"==== Some sane defaults ====

"Make vim behave in a more useful way (this is the default, anyway)
set nocompatible
"Set enconding to UTF-8
set encoding=utf-8
"Set tab width (ts)
set tabstop=2
"Set shift width (sw)
set shiftwidth=2
"Backspace deletes this many spaces instead of just one (sts)
set softtabstop=2
"Expand tabs to spaces (et)
set expandtab
"Smart-indent behaviour after newline (si)
set smartindent
"Remember more commands and searches
set history=1000
"Height of commandline
set cmdheight=2
"Show line and column number
set ruler
"Highlight screen column
set textwidth=80
set colorcolumn=+1
"Always show status line
set laststatus=2
"Custom status line
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
"Highlight current line and column
"set cursorline
"set cursorcolumn
"Show line numbers
set number
"Minimal number of columns to use for line numbers
set numberwidth=4
"Display incomplete commands
set showcmd
"Enable syntax highlighting
syntax on
"Better display of strings
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
"Yank and paste with the system clipboard
set clipboard=unnamed
"Highlight whitespaces at the end of the line
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
"Configure leader key
let mapleader = ","

"==== Set up Vundle ====
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"List of plugins installed by Vundle
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bling/vim-airline'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree.git'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'molokai'

call vundle#end()
filetype plugin indent on

"==== Vudnle dependend setting ====
syntax enable
set t_Co=256
set background=dark
colorscheme molokai

" === Set a fancy font for vim-airline ===
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
