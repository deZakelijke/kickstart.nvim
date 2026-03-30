return { -- Chat with Copilot
  'CopilotC-Nvim/CopilotChat.nvim',
  branch = 'main',
  dependencies = {
    { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
    { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
  },
  keys = {
    {
      '<leader>cc',
      vim.cmd.CopilotChatToggle,
      desc = '[C]opilot [C]hat Toggle',
    },
    {
      '<leader>ce',
      vim.cmd.CopilotChatExplain,
      desc = '[C]opilot [E]xplain Code Selection',
    },
    {
      '<leader>cd',
      vim.cmd.CopilotChatDocs,
      desc = '[C]opilot Write [D]ocs',
    },
    {
      '<leader>ct',
      vim.cmd.CopilotChatTests,
      desc = '[C]opilot Write [T]ests',
    },
  },
  config = function()
    require('CopilotChat').setup()
  end,
}
-- vim: ts=2 sts=2 sw=2 et
