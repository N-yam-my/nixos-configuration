return {
  {
    'chomosuke/typst-preview.nvim',
    -- ft = 'typst',
    cmd = { 'TypstPreview', 'TypstPreviewToggle' },
    config = function()
      -- local path = vim.fn.getenv("XDG_DATA_HOME")
      require 'typst-preview'.setup {
        -- debug = true,
        open_cmd = "msedge.exe %s",
        -- port = 8000,
        -- extra_args = {"--data-plane-host=127.0.0.1:8000", },
        invert_colors = '{ "rest": "always", "image": "never" }',
        -- follow_cursor = false,
        dependencies_bin = {
          ['tinymist'] = "tinymist",
          ['websocat'] = "websocat"
        },
      }
    end
  },
}
