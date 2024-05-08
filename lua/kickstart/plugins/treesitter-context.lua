return { -- Display the current context of the cursor position
  'nvim-treesitter/nvim-treesitter-context',
  build = ':TSContextEnable',
  config = function(_, opts) end,
}
-- vim: ts=2 sts=2 sw=2 et
