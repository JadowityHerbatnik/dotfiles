if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'lilydjwg/colorizer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'posva/vim-vue'
" Plug 'dense-analysis/ale'
" Plug 'Quramy/tsuquyomi', { 'do': 'npm -g install typescript' }
" Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Plug 'prettier/vim-prettier', { 'do': 'npm install' }
" Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'carlitux/deoplete-ternjs'
Plug 'kien/ctrlp.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'sheerun/vim-polyglot'
" Plug 'frazrepo/vim-rainbow'
" Plug 'luochen1990/rainbow'
" Plug 'bounceme/poppy.vim'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'chemzqm/vim-jsx-improve'
" Plug 'yuezk/vim-js'
" Plug 'othree/yajs.vim'
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'pangloss/vim-javascript'
" Plug 'mattsacks/vim-javascript'
" Plug 'mxw/vim-jsx'
" Plug 'Valloric/YouCompleteMe'
Plug 'mattn/emmet-vim'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
" Plug 'vifm/vifm.vim'
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'jreybert/vimagit'
" Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'LukeSmithxyz/vimling'
Plug 'vimwiki/vimwiki'
Plug 'bling/vim-airline'
" Plug 'tpope/vim-commentary'
" Plug 'preservim/nerdcommenter'
Plug 'tomtom/tcomment_vim'
Plug 'vifm/vifm.vim'
Plug 'kovetskiy/sxhkd-vim'
call plug#end()
