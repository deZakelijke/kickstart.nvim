return { -- Run lazygit from within neovim as a floating window
  'kdheepak/lazygit.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
  },
  keys = {
    {
      '<leader>gg',
      '<cmd>LazyGit<cr>',
      desc = 'LazyGit',
    },
  },
  config = function()
    require('telescope').load_extension 'lazygit'
    -- Transparency of floating win
    vim.g.lazygit_floating_window_winblend = 1.0
    -- Use plenary.vim to manage floating wind
    vim.g.lazygit_floating_window_use_plenary = 1
  end,
}
-- vim: ts=2 sts=2 sw=2 et
