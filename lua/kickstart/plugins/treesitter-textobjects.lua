return { -- Treesitter text objects
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
    vim.keymap.set({ 'x', 'o' }, 'am', function()
      select.select_textobject('@function.outer', 'textobjects')
    end, { desc = 'Select outer part of a method/function' })
    vim.keymap.set({ 'x', 'o' }, 'im', function()
      select.select_textobject('@function.inner', 'textobjects')
    end, { desc = 'Select inner part of a method/function' })
    vim.keymap.set({ 'x', 'o' }, 'ac', function()
      select.select_textobject('@class.outer', 'textobjects')
    end, { desc = 'Select outer part of a class' })
    vim.keymap.set({ 'x', 'o' }, 'ic', function()
      select.select_textobject('@class.inner', 'textobjects')
    end, { desc = 'Select inner part of a class' })
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

    local ts_repeat_move = require 'nvim-treesitter-textobjects.repeatable_move'

    -- Repeat movement with ; and ,
    -- vim way: ; goes to the direction you were moving.
    vim.keymap.set({ 'n', 'x', 'o' }, ';', ts_repeat_move.repeat_last_move, { desc = 'Repeat last move' })
    vim.keymap.set({ 'n', 'x', 'o' }, ',', ts_repeat_move.repeat_last_move_opposite, { desc = 'Repeat last move opposite' })

    -- Make builtin f, F, t, T also repeatable with ; and ,
    vim.keymap.set({ 'n', 'x', 'o' }, 'f', ts_repeat_move.builtin_f_expr, { expr = true, desc = 'Move to next char' })
    vim.keymap.set({ 'n', 'x', 'o' }, 'F', ts_repeat_move.builtin_F_expr, { expr = true, desc = 'Move to prev char' })
    vim.keymap.set({ 'n', 'x', 'o' }, 't', ts_repeat_move.builtin_t_expr, { expr = true, desc = 'Move before next char' })
    vim.keymap.set({ 'n', 'x', 'o' }, 'T', ts_repeat_move.builtin_T_expr, { expr = true, desc = 'Move before prev char' })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
