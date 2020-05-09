" Nerd tree
  let NERDTreeMapOpenVSplit='v'

  map <leader>n :NERDTreeToggle %<CR>
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
