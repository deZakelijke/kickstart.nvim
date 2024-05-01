return {
  'mhartington/oceanic-next',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    vim.cmd.colorscheme 'OceanicNext'

    vim.cmd.hi 'Comment gui=none'

    vim.g.airline_theme = 'oceanicnext'
  end,
}
-- vim: ts=2 sts=2 sw=2 et
