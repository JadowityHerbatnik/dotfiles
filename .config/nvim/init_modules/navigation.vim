" j/k will move virtual lines (lines that wrap)
  noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
  noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

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

  " Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l

" Append after the next quotation mark
	nnoremap <leader>' <Esc>f"a
	inoremap <leader>' <Esc>f"a

" Append after the end of the current bracket
	nnoremap <leader>/ <Esc>%%a
	inoremap <leader>/ <Esc>%%a

" Append after the beginning of the current bracket
	nnoremap <leader>. <Esc>%a
	inoremap <leader>. <Esc>%a

" Some braces formatting
  inoremap () ()<Left>
  inoremap [] []<Left>
  inoremap {} {}<Left>
  inoremap <> <><Left>
  inoremap "" ""<Left>
  inoremap '' ''<Left>
  inoremap `` ``<Left>

" Resize split windows
  nnoremap <silent> <A->> :vertical resize +10<CR>
  nnoremap <silent> <A-<> :vertical resize -10<CR>
