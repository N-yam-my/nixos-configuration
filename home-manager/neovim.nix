{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    # install lazy.nvim
    plugins = with pkgs.vimPlugins; [
      lazy-nvim
      tokyo-night-nvim
      rainbow-delimiters-nvim
      nvim-autopairs
      vim-startuptime
    ];
    # Expand into ~/.config/nvim/init.lua
    extraLuaConfig = builtins.readFile ../nvim/init.lua;
  };
  xdg.configFile."nvim/lua" = {
    recursive = true;
    source = ../nvim/lua;
  };
}
