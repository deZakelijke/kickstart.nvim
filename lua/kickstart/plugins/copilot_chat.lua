return { -- Chat with Copilot
  'CopilotC-Nvim/CopilotChat.nvim',
  branch = 'main',
  dependencies = {
    { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
    { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
  },
  config = function()
    require('CopilotChat').setup()
    vim.keymap.set('n', '<leader>cc', vim.cmd.CopilotChatToggle, { desc = '[C]opilot [C]hat toggle' })
    vim.keymap.set('n', '<leader>ce', vim.cmd.CopilotChatExplain, { desc = '[C]opilot [E]xplain code selection' })
    vim.keymap.set('v', '<leader>ce', vim.cmd.CopilotChatExplain, { desc = '[C]opilot [E]xplain code selection' })
    vim.keymap.set('n', '<leader>cd', vim.cmd.CopilotChatDocs, { desc = '[C]opilot write [D]ocs for selection' })
    vim.keymap.set('v', '<leader>cd', vim.cmd.CopilotChatDocs, { desc = '[C]opilot write [D]ocs for selection' })
    vim.keymap.set('n', '<leader>ct', vim.cmd.CopilotChatTests, { desc = '[C]opilot write [T]ests for code' })
    vim.keymap.set('v', '<leader>ct', vim.cmd.CopilotChatTests, { desc = '[C]opilot write [T]ests for code' })
  end,
}
