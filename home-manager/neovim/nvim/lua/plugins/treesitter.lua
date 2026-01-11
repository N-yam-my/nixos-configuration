local spec = {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    priority = 1500,
    init = function()
      vim.api.nvim_create_autocmd('FileType', {
        group = vim.api.nvim_create_augroup("vim-treesitter-start", {}),
        callback = function(args)
          -- syntax highlighting, provided by Neovim
          pcall(vim.treesitter.start, args.buf)
          -- folds, provided by Neovim
          -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          -- vim.wo.foldmethod = 'expr'
          -- indentation, provided by nvim-treesitter
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end
  },
}
return spec
