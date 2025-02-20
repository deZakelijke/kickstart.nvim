-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  tag = '2.1.0',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').register {
      { '', group = '[S]earch' },
      { '', desc = '<leader>w_', hidden = true },
      { '', group = '[T]oggle' },
      { '', desc = '<leader>s_', hidden = true },
      { '', group = '[D]ocument' },
      { '', group = 'Git [H]unk' },
      { '', desc = '<leader>t_', hidden = true },
      { '', desc = '<leader>r_', hidden = true },
      { '', group = '[W]orkspace' },
      { '', desc = '<leader>d_', hidden = true },
      { '', group = '[R]ename' },
      { '', desc = '<leader>h_', hidden = true },
    }
    -- visual mode
    require('which-key').register({
      { '', desc = '<leader>h', mode = 'v' },
      { '', desc = '<leader>h', mode = 'v' },
    }, { mode = 'v' })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
