local spec = {
  {
    'vim-skk/skkeleton',
    dependencies = {
      'vim-denops/denops.vim',
      { 'delphinus/skkeleton_indicator.nvim', opts = {} },
    },
    config = function()
      local path = os.getenv("XDG_CONFIG_HOME")
      vim.fn['skkeleton#initialize']()
      vim.fn['skkeleton#config']({
        eggLikeNewline = true,
        globalDictionaries =  {
          path .. '/skk/SKK-JISYO.L',
          path .. '/skk/SKK-JISYO.law',
        },
        -- usePopup = false,
        userDictionary = path .. "/_skkeleton",
      })
    end,
    keys = {
      { '<C-j>', '<Plug>(skkeleton-toggle)', mode = 'i'},
      { '<C-j>', '<Plug>(skkeleton-toggle)', mode = 'c'},
      { 'jk', '<Plug>(skkeleton-toggle)', mode = 'i'},
      { 'jk', '<Plug>(skkeleton-toggle)', mode = 'c'},
    }
  },
  {
    dependencies = { 'vim-skk/skkeleton' },
    event = 'VeryLazy',
    config = function()
      require('skkeleton_indicator').setup {
    --     border = function(args)
    --       if args.mode == "hira" then
	   --        return { "⡠", "⠤", "⢄", "⢸", "⠊", "⠒", "⠑", "⡇" }
    --       elseif args.mode == "kata" then
	   --        return { "⡤", "⠤", "⢤", "⢸", "⠚", "⠒", "⠓", "⡇" }
    --       elseif args.mode == "zenkaku" then
	   --        return { "⣤", "⣤", "⣤", "⣿", "⠛", "⠛", "⠛", "⣿" }
    --       end
    -- end
      }
    end
  },
}
return spec
