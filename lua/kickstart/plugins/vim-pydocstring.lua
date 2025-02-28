-- NOTE: I don't really use this anymore
return { -- Automatically formatted python docstrings
  'heavenshell/vim-pydocstring',
  config = function()
    vim.g.pydocstring_doq_path = '/home/micha/.pyenv/shims/doq'
    vim.g.pydocstring_enable_mappings = 0
    vim.g.pydocstring_formatter = 'google'
    vim.keymap.set('n', '<leader>pdg', '<CMD>Pydocstring<CR>', { desc = '[P]ython [Docstring] [G]enerate for the current method' })
    vim.keymap.set('n', '<leader>pda', '<CMD>PydocstringFormat<CR>', { desc = '[P]ython [Docstring] generate [A]ll in class' })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
