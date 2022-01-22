local npairs = require('nvim-autopairs')
require'colorizer'.setup()
-- local Cond= require('nvim-autopairs.conds')
-- local ts_conds = require('nvim-autopairs.ts-conds')

-- local endwise = require('nvim-autopairs.ts-rule').endwise
npairs.setup({
    disable_filetype = { "TelescopePrompt" , "vim" },
    fast_wrap = {
      end_key = 'L',
      chars = { '{', '[', '(', '"', "'" ,"`"},
      pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
      offset = 0, -- Offset from pattern match
      keys = 'qwertyuiopzxcvbnmasdfghjkl',
      check_comma = true,
      highlight = 'Search',
      highlight_grey='Comment'
    },
    enable_check_bracket_line = false,
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    }
})
