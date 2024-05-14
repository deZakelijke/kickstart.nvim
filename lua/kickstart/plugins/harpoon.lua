return { -- Move between up to four files with F1-F4
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<leader>hq', function()
      harpoon:list():select(1)
    end, { desc = '[H]arpoon Select [Q] first' })
    vim.keymap.set('n', '<leader>hw', function()
      harpoon:list():select(2)
    end, { desc = '[H]arpoon Select [W] second' })
    vim.keymap.set('n', '<leader>he', function()
      harpoon:list():select(3)
    end, { desc = '[H]arpoon Select [E] third' })
    vim.keymap.set('n', '<leader>hr', function()
      harpoon:list():select(4)
    end, { desc = '[H]arpoon Select [R] fourth' })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
