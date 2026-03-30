return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
  opts = {
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    local treesitter = require 'nvim-treesitter'
    treesitter.setup()
    treesitter.install {
      'bash',
      'c',
      'dockerfile',
      'go',
      'html',
      'json',
      'lua',
      'luadoc',
      'markdown',
      'python',
      'rust',
      'sql',
      'toml',
      'vim',
      'yaml',
    }

    vim.api.nvim_create_autocmd('FileType', {
      pattern = {
        'bash',
        'c',
        'dockerfile',
        'go',
        'html',
        'json',
        'lua',
        'luadoc',
        'markdown',
        'python',
        'rust',
        'sql',
        'toml',
        'vim',
        'yaml',
      },
      callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
