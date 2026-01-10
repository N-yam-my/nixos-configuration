-- local randomNumber = math.random(0,2)
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
  showmatch = true,
  ambiwidth = 'single',
  conceallevel = 2,
  -- Search
  hlsearch = true,
  -- Completetion
  completeopt = {
    'menuone',
    'noinsert',
  },
}
for key, value in pairs(options) do
	vim.opt[key] = value
end

if vim.fn.has("wsl") == 1 then
  if vim.fn.executable("wl-copy") == 0 then
    print("wl-clipboard not found, clipboard integration won't work")
  else
    vim.g.clipboard = {
      name = "wl-clipboard (wsl)",
      copy = {
        ["+"] = 'wl-copy --type text/plain',
        ["*"] = 'wl-copy --primary --type text/plain',
      },
      paste = {
        ["+"] = (function ()
          return vim.fn.systemlist('wl-paste --no-newline|sed -e "s/\r$//"', {''}, 1) -- '1'  keeps empty lines
        end),
        ["*"] = (function ()
          return vim.fn.systemlist('wl-paste --primary --no-newline|sed -e "s/\r$//"', {''}, 1)
        end),
      },
      cash_enable = true,
    }
  end
end
