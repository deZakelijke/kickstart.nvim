return { -- Chat with Copilot
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
      { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
    },
    opts = {
      debug = false, -- Enable debugging
      -- See Configuration section for rest
    },
    config = function()
      require('copilot-chat').setup()
      vim.keymap.set('n', '<leader>cct', vim.cmd.CopilotChatToggle, { desc = '[C]opilot [C]hat [T]oggle' })
      vim.keymap.set('n', '<leader>cce', vim.cmd.CopilotChatExplain, { desc = '[C]opilot [C]hat [E]xplain' })
      vim.keymap.set('n', '<leader>ccr', vim.csm.CopilotChatReview, { desc = '[C]opilot [C]hat [R]eview' })
    end,
    -- See Commands section for default commands if you want to lazy load on them
  },
}
