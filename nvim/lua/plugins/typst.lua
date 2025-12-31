return {
  -- {
  --   'kaarmu/typst.vim',
  --   config = function()
  --     vim.g.typst_conceal = 1
  --   end,
  --   ft = 'typst'
  -- },
  {
    'chomosuke/typst-preview.nvim',
    ft = 'typst',
    version = '1.*',
    build = function() require 'typst-preview'.update() end,
    config = function()
      local path = os.getenv("XDG_DATA_HOME")
      require 'typst-preview'.setup {
        -- debug = true,
        open_cmd = "min.exe %s",
        -- port = 8000,
        -- extra_args = {"--data-plane-host=127.0.0.1:8000", },
        -- invert_colors = '{ "rest": "always", "image": "never" }',
        -- follow_cursor = false,
        dependencies_bin = {
          ['tinymist'] = path .. "/nvim/mason/packages/tinymist/tinymist-linux-x64",
        },
      }
    end
  },
}
