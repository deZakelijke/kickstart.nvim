return {
  'preservim/nerdtree',
  config = function()
    vim.keymap.set('n', '<F8>', ':NERDTreeToggle<CR>'),
  end,
}
-- vim: ts=2 sts=2 sw=2 et
