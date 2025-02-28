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
      desc = '[C]opilot [C]hat toggle',
    },
    {
      '<leader>ce',
      vim.cmd.CopilotChatExplain,
      desc = '[C]opilot [E]xplain code selection',
    },
    {
      '<leader>cd',
      vim.cmd.CopilotChatDocs,
      desc = '[C]opilot write [D]ocs for selection',
    },
    {
      '<leader>ct',
      vim.cmd.CopilotChatTests,
      desc = '[C]opilot write [T]ests for code',
    },
  },
  config = function()
    require('CopilotChat').setup()
  end,
}
