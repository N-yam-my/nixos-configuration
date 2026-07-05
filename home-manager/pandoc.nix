{ pkgs, config, ... }:
let
  inherit (config.lib.file) mkOutOfStoreSymlink;
  misc = "${config.home.homeDirectory}/.dotfiles/misc";
in
{
  xdg.dataFile = {
    "pandoc".source = mkOutOfStoreSymlink "${misc}/pandoc";
  };
}
