{ pkgs, config, ... }:
let
  inherit (config.lib.file) mkOutOfStoreSymlink;
  misc = "${config.home.homeDirectory}/.dotfiles/misc";
in
{
  xdg.dataFile."typst".source = mkOutOfStoreSymlink "${misc}/typst"
}
