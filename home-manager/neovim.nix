{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    # ~/.config/nvim/init.luaに文字列が展開される
    extraLuaConfig = builtins.readFile ./init.lua;
  };
  # xdg.configFile."nvim" = {
  #   source = ../nvim;
  # };
}
