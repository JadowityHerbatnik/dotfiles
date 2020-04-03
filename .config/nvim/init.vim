let mapleader =","

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'carlitux/deoplete-ternjs'
Plug 'kien/ctrlp.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
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
" Plug 'airblade/vim-gitgutter'
Plug 'LukeSmithxyz/vimling'
Plug 'vimwiki/vimwiki'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'vifm/vifm.vim'
Plug 'kovetskiy/sxhkd-vim'
call plug#end()

set bg=light
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus


" Some basics:
	nnoremap c "_c
	set nocompatible
	filetype plugin indent on
	set omnifunc=syntaxcomplete#Complete
	syntax on
	set encoding=utf-8
	set number relativenumber
	set tabstop=2
	set shiftwidth=2
	set hlsearch
	colorscheme koehler

" Press Escape to stop highlighting matching patterns
	nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" Deoplete settings
	let g:deoplete#enable_at_startup = 1
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Reload vim
	nnoremap <leader>r <Esc>:source ~/.vimrc<CR>

" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Goyo plugin makes text more readable when writing prose:
	" map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

" Nerd tree
	map <leader>n :NERDTreeToggle %<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vimling:
	nm <leader>d :call ToggleDeadKeys()<CR>
	imap <leader>d <esc>:call ToggleDeadKeys()<CR>a
	nm <leader>i :call ToggleIPA()<CR>
	imap <leader>i <esc>:call ToggleIPA()<CR>a
	nm <leader>e :call ToggleProse()<CR>

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Navigate in Insert mode
	inoremap <C-k> <Up>
	inoremap <C-j> <Down>
	inoremap <C-h> <Left>
	inoremap <C-l> <Right>

" Move lines up and down
	nnoremap <A-j> :m .+1<CR>==
	nnoremap <A-k> :m .-2<CR>==
	inoremap <A-j> <Esc>:m .+1<CR>==gi
	inoremap <A-k> <Esc>:m .-2<CR>==gi
	vnoremap <A-j> :m '>+1<CR>gv=gv
	vnoremap <A-k> :m '<-2<CR>gv=gv

" Check file in shellcheck:
"	map <leader>s :!clear && shellcheck %<CR>

" Resize split windows
  nnoremap <silent> <A->> :vertical resize +10<CR>
  nnoremap <silent> <A-<> :vertical resize -10<CR>

" Replace all is aliased to S.
	nnoremap S :%s///gc<Left><Left><Left><Left>

" For local replace
	nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
	nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
	" map <leader>p :!opout <c-r>%<CR><CR>

" ------------------------------------
" Autoformatting for various languages
" ------------------------------------

	autocmd BufWritePre,InsertLeave *.html,*.scss,*.css,*.js,*.jsx,*.json Neoformat

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex

" Enable Goyo by default for mutt writting
	" Goyo's width will be the line limit in mutt.
	autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo \| set bg=light

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" When shortcut files are updated, renew bash and vifm configs with new material:
	autocmd BufWritePost ~/.config/bmdirs,~/.config/bmfiles !shortcuts

" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" Compile SCSS on exit
	autocmd BufWritePost *.scss silent !compiler %

" Restart compton on onfig update
	autocmd BufWritePost *compton.conf silent !restartcompton

" Generate alacritty config on write
	autocmd BufWritePost *alacritty.yml.in silent !xalacritty

" Shell scripits shebang
	inoremap <leader>she  #!/usr/bin/env sh<CR>

" Javascript
	autocmd FileType javascript inoremap <leader>p console.log()<Left>

	autocmd FileType javascript inoremap <leader>fori for(let i=0; i<<++>; i++){<CR><++><CR>}<Up><Up>
	autocmd FileType javascript inoremap <leader>forj for(let j=0; j<<++>; j++){<CR><++><CR>}<Up><Up>

	autocmd FileType javascript inoremap <leader>func function <++>(<++>){<CR><++><CR>}<Up><Up>

	autocmd FileType javascript inoremap <leader>arr ()=><++><Esc>Ba

	autocmd FileType javascript inoremap <leader>imp import <++> from "<++>";<Esc>I


" Some braces formatting
	inoremap () ()<Left>
	inoremap [] []<Left>
	inoremap {} {}<Left>
	inoremap "" ""<Left>
	inoremap '' ''<Left>
	inoremap `` ``<Left>

" Emmet binding
	let g:user_emmet_leader_key=',m'

" Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l

" Append after the next quotation mark
	map <leader>' <Esc>/\v"\|'<CR>a
	inoremap <leader>' <Esc>/\v"\|'<CR>a

" Match the end of the next bracket
	map <leader>/ <Esc>/[\]\)\}\>]<CR>a
	inoremap <leader>/ <Esc>/[\]\)\}\>]<CR>a

" Match the beginning of the next bracket
	map <leader>. <Esc>/[\[\(\{\<]<CR>a
	inoremap <leader>. <Esc>/[\[\(\{\<]<CR>a

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" ':w<CR>' is 4 key strokes, ',w' is two 1!1!!1
	map <leader>w :w<CR>

" Same for ':wq'
	map <leader>wq :wq<CR>

" And ':q'
	map <leader>q :q<CR>

" And also ':q!'
	map <leader>Q :q!<CR>
