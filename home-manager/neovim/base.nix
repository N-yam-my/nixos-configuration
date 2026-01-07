{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    # Packages inside neovim
    extraPackages = with pkgs; [
      skkDictionaries.l
    ];
    # Install lazy.nvim
    plugins = with pkgs.vimPlugins; [
      lazy-nvim
    ];
    # Expand into ~/.config/nvim/init.lua
    # extraLuaConfig = builtins.readFile ./init.lua;
  };
  # Expand into ~/.config/nvim/lua
  xdg.configFile."nvim/lua" = {
    recursive = true;
    source = ./lua;
  };
}
