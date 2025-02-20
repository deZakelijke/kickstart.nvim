return { -- Select a virtual env automatically
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
    'mfussenegger/nvim-dap-python', --optional
    { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
  },
  lazy = false,
  branch = 'regexp', -- This is the regexp branch, use this for the new version
  config = function()
    require('venv-selector').setup()
  end,
  keys = {
    { '<leader>vs', '<cmd>VenvSelect<cr>', { desc = '[V]irtual [S]elect' } },
  },
}
-- vim: ts=2 sts=2 sw=2 et
