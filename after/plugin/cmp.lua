vim.opt.completeopt = {'menuone', 'menu', 'noselect','noinsert'}

local cmp = require'cmp'
local lspkind = require'lspkind'
local luasnip = require 'luasnip'
local source_mapping = {
	  buffer = "[Buffer]",
	  nvim_lsp = "[LSP]",
	  nvim_lua = "[Lua]",
	  cmp_tabnine = "[TN]",
	  path = "[Path]",
  }
  
cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true
      }),
      ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
        elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
        else
        fallback()
        end
      end,
      ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'cmp_tabnine' },
      { name = 'luasnip'},
    }, {
      { name = 'buffer' },
    }),
    formatting = {
      format = function(entry, vim_item)
            vim_item.kind = lspkind.presets.default[vim_item.kind]
            local menu = source_mapping[entry.source.name]
            if entry.source.name == 'cmp_tabnine' then
                if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
                    menu = entry.completion_item.data.detail .. ' ' .. menu
                end
                vim_item.kind = ''
            end
            vim_item.menu = menu
            return vim_item
        end
    }
  })

local tabnine = require('cmp_tabnine.config')
  tabnine:setup({
	  max_lines = 1000,
	  max_num_results = 20,
	  sort = true,
	    run_on_every_keystroke = true,
	    snippet_placeholder = '..',
	})

require('luasnip').filetype_extend("javascript", { "html" })
require('luasnip').filetype_extend("javascript", { "css" })
require("luasnip.loaders.from_vscode").load()

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }

vim.cmd [[highlight! default link CmpItemKind CmpItemMenuDefault]]


