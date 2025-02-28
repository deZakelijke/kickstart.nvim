return { -- file tree
  'stevearc/oil.nvim',
  keys = {
    {
      '-',
      '<CMD>Oil<CR>',
      desc = '[-] open parent directory',
    },
  },
  config = function()
    require('oil').setup()
  end,
}
-- vim: ts=2 sts=2 sw=2 et
