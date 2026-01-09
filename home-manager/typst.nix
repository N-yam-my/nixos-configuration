{ pkgs, config, ... }:
let
  inherit (config.lib.file) mkOutOfStoreSymlink;
  local = "${config.home.homeDirectory}/.dotfiles/misc/typst/packages/local";
in
{
  xdg.dataFile = {
    "typst/packages/local/myStyle".source = mkOutOfStoreSymlink "${local}/myStyle";
    "typst/packages/local/myPackages".source = mkOutOfStoreSymlink "${local}/myPackages";
    "typst/packages/local/myUtils".source = mkOutOfStoreSymlink "${local}/myUtils";
  };
}
