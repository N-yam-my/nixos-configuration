local spec = {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    -- event = { 'BufRead', 'BufNewFile' },
    opts = function(_, opts)
      opts.ensure_installed = {}
    end,
    init = function()
      vim.api.nvim_create_autocmd('FileType', {
        group = vim.api.nvim_create_augroup("vim-treesitter-start", {}),
        -- pattern = { 'rust', 'javascript', 'zig' },
        callback = function()
          -- syntax highlighting, provided by Neovim
          pcall(vim.treesitter.start)
          -- folds, provided by Neovim
          -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          -- vim.wo.foldmethod = 'expr'
          -- indentation, provided by nvim-treesitter
          -- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end
  },
}
return spec
