require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = false,
}

vim.g.indentLine_char_list = { '┊','┊','┊','┊' }
vim.g.indent_blankline_char = "┊"
vim.g.indentLine_setConceal = 1
vim.g.indentLine_conceallevel = 1
vim.g.indentLine_concealcursor = ""
vim.g.indent_blankline_char_highlight="IndentLine"
vim.g.indentLine_fileTypeExclude = { "vifm","help","dashboard","fern",'lsp','which_key','sagahover' }

