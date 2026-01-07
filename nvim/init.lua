-- vim.cmd('autocmd!')
require('settings.options')
require('settings.autocmd')
require('settings.keymaps')

-- load plugins with lazy.nvim
local opts = {
  defaults = {
    lazy = true,
  },
  spec = {
    { import = "plugins" },
  },
  pkg = {
    enabled = false,
  },
  rocks = {
    enabled = false,
  },
  dev = {
    path = "@lazyPath@", -- WIP
    patterns = { "" }, 
  },
  performance = {
    reset_packpath = false,
    rtp = {
      reset = falsem
    },
  },
  install = {
    missing = false,
  },
}
require("lazy").setup(opts)

