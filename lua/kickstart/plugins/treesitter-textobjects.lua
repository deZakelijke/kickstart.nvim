return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  -- lazy = true,
  branch = 'main',
  init = function()
    -- Disable entire built-in ftplugin mappings to avoid conflicts.
    -- See https://github.com/neovim/neovim/tree/master/runtime/ftplugin for built-in ftplugins.
    vim.g.no_plugin_maps = true

    -- Or, disable per filetype (add as you like)
    -- vim.g.no_python_maps = true
    -- vim.g.no_ruby_maps = true
    -- vim.g.no_rust_maps = true
    -- vim.g.no_go_maps = true
  end,
  config = function()
    local select = require 'nvim-treesitter-textobjects.select'
    local move = require 'nvim-treesitter-textobjects.move'

    -- The new main branch API only stores behavioral options via setup().
    -- Keymaps are NOT auto-registered; they must be set up manually below.
    require('nvim-treesitter-textobjects').setup {
      select = { lookahead = true },
      move = { set_jumps = true },
    }

    -- Select textobjects (visual + operator-pending modes)
    vim.keymap.set({ 'x', 'o' }, 'a=', function()
      select.select_textobject '@assignment.outer'
    end, { desc = 'Select outer part of an assignment' })
    vim.keymap.set({ 'x', 'o' }, 'i=', function()
      select.select_textobject '@assignment.inner'
    end, { desc = 'Select inner part of an assignment' })
    vim.keymap.set({ 'x', 'o' }, 'al', function()
      select.select_textobject '@loop.outer'
    end, { desc = 'Select outer part of a loop' })
    vim.keymap.set({ 'x', 'o' }, 'il', function()
      select.select_textobject '@loop.inner'
    end, { desc = 'Select inner part of a loop' })

    -- Move keymaps
    vim.keymap.set('n', ']f', function()
      move.goto_next_start '@call.outer'
    end, { desc = 'Next function call start' })
    vim.keymap.set('n', ']m', function()
      move.goto_next_start '@function.outer'
    end, { desc = 'Next method/function def start' })
    vim.keymap.set('n', ']c', function()
      move.goto_next_start '@class.outer'
    end, { desc = 'Next class start' })
    vim.keymap.set('n', ']i', function()
      move.goto_next_start '@conditional.outer'
    end, { desc = 'Next conditional start' })
    vim.keymap.set('n', ']l', function()
      move.goto_next_start '@loop.outer'
    end, { desc = 'Next loop start' })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
