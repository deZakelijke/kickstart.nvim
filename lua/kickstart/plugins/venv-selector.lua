return { -- Select a virtual env automatically
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    { "nvim-telescope/telescope.nvim", version = "*", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  f  ft = "python",
  keys = {
    { '<leader>vs', '<cmd>VenvSelect<cr>', { desc = '[V]irtual [S]elect' } },
  },
  opts = { -- this can be an empty lua table - just showing below for clarity.
      search = {}, -- if you add your own searches, they go here.
      options = {} -- if you add plugin options, they go here.
  },
}
-- vim: ts=2 sts=2 sw=2 et
