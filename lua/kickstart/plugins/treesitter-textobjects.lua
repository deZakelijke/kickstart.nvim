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
    require('nvim-treesitter.config').setup {
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          -- FIX: for some reason, the keymaps don't work.
          keymaps = {
            ['a='] = { query = '@assignment.outer', desc = 'Select outer part of an assignment' },
            ['i='] = { query = '@assignment.inner', desc = 'foo' },
            ['al'] = { query = '@loop.outer', desc = 'foo' },
            ['il'] = { query = '@loop.inner', desc = 'foo' },
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            [']f'] = { query = '@call.outer', desc = 'Next function call start' },
            [']m'] = { query = '@function.outer', desc = 'Next method/function def start' },
            [']c'] = { query = '@class.outer', desc = 'Next class start' },
            [']i'] = { query = '@conditional.outer', desc = 'Next conditional start' },
            [']l'] = { query = '@loop.outer', desc = 'Next loop start' },
          },
        },
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
