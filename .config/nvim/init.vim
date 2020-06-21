let g:mapleader =","

source $HOME/.config/nvim/init_modules/plugins.vim
source $HOME/.config/nvim/init_modules/coc.vim
source $HOME/.config/nvim/init_modules/ctrlp.vim
source $HOME/.config/nvim/init_modules/navigation.vim
source $HOME/.config/nvim/init_modules/snippets.vim
source $HOME/.config/nvim/init_modules/prettier.vim
source $HOME/.config/nvim/init_modules/general.vim
source $HOME/.config/nvim/init_modules/lukes.vim
source $HOME/.config/nvim/init_modules/emmet.vim
source $HOME/.config/nvim/init_modules/nerdtree.vim
source $HOME/.config/nvim/init_modules/autocompiles.vim
source $HOME/.config/nvim/init_modules/general.vim
source $HOME/.config/nvim/init_modules/git.vim

" Some basics:
  set background=dark
  set go=a
  set mouse=a
  set clipboard+=unnamedplus
	nnoremap c "_c
	set nocompatible
	filetype plugin indent on
	set omnifunc=syntaxcomplete#Complete
	syntax enable
	set encoding=utf-8
	set number relativenumber
  set expandtab
	set tabstop=2
	set shiftwidth=2
	set hlsearch
	set termguicolors
	set t_Co=256
	colorscheme flattened_dark

	let g:gruvbox_italic = 1
	let g:gruvbox_contrast_dark = "soft"

  set smarttab
  set cindent
" always uses spaces instead of tab characters


" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright







