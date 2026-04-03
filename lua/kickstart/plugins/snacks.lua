return { -- Editor utilities
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    image = { enabled = true },
    lazygit = { enabled = true },
    picker = { enabled = true },
  },
}
-- vim: ts=2 sts=2 sw=2 et
