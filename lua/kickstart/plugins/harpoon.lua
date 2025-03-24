return { -- Move between up to four files with F1-F4
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    {
      '<leader>ha',
      function()
        require('harpoon'):list():add()
      end,
      desc = '[H]arpoon [A]dd file to list',
    },
    {
      '<C-e>',
      function()
        require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())
      end,
      desc = 'Harpoon [E]xplorer',
    },
    {
      '<leader>hq',
      function()
        require('harpoon'):list():select(1)
      end,
      desc = '[H]arpoon Select [Q] first',
    },
    {
      '<leader>hw',
      function()
        require('harpoon'):list():select(2)
      end,
      desc = '[H]arpoon Select [W] second',
    },
    {
      '<leader>he',
      function()
        require('harpoon'):list():select(3)
      end,
      desc = '[H]arpoon Select [E] third',
    },
    {
      '<leader>hr',
      function()
        require('harpoon'):list():select(4)
      end,
      desc = '[H]arpoon Select [R] fourth',
    },
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()
  end,
}
-- vim: ts=2 sts=2 sw=2 et
