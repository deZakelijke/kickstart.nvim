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
    require('oil').setup {
      default_file_explorer = true,
      columns = {
        'icon',
        'permissions',
      },
      watch_for_changes = true,
      view_options = {
        show_hidden = true,
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
