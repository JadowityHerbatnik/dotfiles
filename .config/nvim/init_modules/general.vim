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

" Reload vim
	nnoremap <leader>s <Esc>:source ~/.vimrc<CR>

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" Replace all is aliased to S.
	nnoremap S :%s///gc<Left><Left><Left><Left>
