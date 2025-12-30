-- general settings
local options = {
  --Essentials
  -- guifont = "PlemolJP Console NF:h12",
  -- guifont = "SauceCodePro Nerd Font Mono:h11",
  -- guifont = "Moralerspace Krypton HWNF:h12",
  encoding = 'utf-8',
  fileencoding = 'utf-8',
  clipboard = 'unnamedplus',
  -- Indentation
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  autoindent = true,
  smartindent = true,
  -- Appearance
  number = true,
  cursorline = true,
  virtualedit = 'onemore',
  breakindent = true,
  showbreak = '>',
  ambiwidth = 'single',
  conceallevel = 2,
  -- Search
  hlsearch = true,
  -- Completetion
  completeopt = "menu,noinsert"
}
for key, value in pairs(options) do
	vim.opt[key] = value
end

-- keymaps

vim.g.mapleader = ' '
-- vim.keymap.set(
--   {mode},
--   {lhs},
--   {rhs},
--   {opts}
-- )
vim.keymap.set(
  { 'n', },
  '<leader>tn',
  '<Cmd>tabnew<CR>'
)

vim.keymap.set(
  'n',
  '<Esc><Esc>',
  ':nohlsearch<CR><Esc>'
)
