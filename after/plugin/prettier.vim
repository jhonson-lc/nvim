let g:prettier#autoformat = 0
let g:prettier#config#tab_width = '2'
let g:prettier#config#print_width = '100'
let g:prettier#config#single_quote='true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#jsx_bracket_same_line = 'true'
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync

