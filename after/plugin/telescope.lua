local actions = require('telescope.actions')
local finders = require('telescope.finders')
local pickers = require('telescope.pickers')
local previewers = require('telescope.previewers')
local builtin = require('telescope.builtin')

------------------------------
require('telescope').setup({
  defaults = {
    file_ignore_patterns = {"node_modules","%.png","%.jpg"},
    color_devicons= true,
		prompt_prefix = " >",
        color_devicons = true,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

      vimgrep_arguments = {
      'ag',
      '--column',
      '--numbers',
      '--noheading',
      '--nocolor',
      '--smart-case',
      '--ignore',
      'yarn.lock',
      '--ignore',
      'package-lock.json',
      '.gitignore'
    },
    mappings = {
      i= {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,
        ['<C-q>'] = actions.send_to_qflist,
        ["<C-c>"] = actions.close,
        ["<C-h>"] = "which_key",
      },
      n = {
        ["<esc>"] = actions.close
      },
    },
  },
})

