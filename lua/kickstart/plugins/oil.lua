return { -- file tree
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup()
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = '[-] open parent directory' })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
