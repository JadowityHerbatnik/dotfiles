
	let g:neoformat_typescriptreact_prettier = {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'typescript'],
        \ 'stdin': 1
        \ }
    let g:neoformat_enabled_typescriptreact = ['tsfmt', 'prettier']


  nnoremap <leader>; :Neoformat<CR><Esc>
	autocmd BufWritePre *.html,*.scss,*.css,*.js,*.jsx,*.ts,*.tsx,*.json Neoformat

