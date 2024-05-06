return {
    'kdheepak/lazygit.nvim',
    dependencies = {
        'nvim-telescope/telescope.nvim',
        'nvim-lua/plenary.nvim',
    },
    config = function()
        require('telescope').load_extension 'lazygit'
        vim.g.lazygit_floating_window_winblend.set(1.0),                                                               -- Transparency of floating window
        vim.g.lazygit_floating_window_use_plenary.set(1)                                                               -- Use plenary.vim to manage floating window
        vim.keymap.set('n', '<leader>gg', ':LazyGit<cr>', { silent = true })
        vim.keymap.set('n', '<leader>flg', 'require("telescope").extensions.lazygit.lazygit()<cr>', { silent = true }) -- don't quite remember what this does
    end,
}
-- vim: ts=2 sts=2 sw=2 et
