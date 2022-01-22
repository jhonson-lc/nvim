nnoremap  <leader>pf <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <leader>lg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap  <leader>pb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap  <leader>ht <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>


highlight TelescopeSelection      guifg=#9cf087 gui=bold  guibg=#00384d
highlight TelescopeMatching       guifg=#ffcc1b
highlight TelescopeSelectionCaret guifg=#9cf087 guibg=#00384d 
highlight TelescopeMultiSelection guifg=#928374 
highlight TelescopeNormal         guibg=#00000  
highlight TelescopePromptPrefix   guifg=#9cf087
