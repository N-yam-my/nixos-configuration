{ pkgs, config, ... }:
let
  inherit (config.lib.file) mkOutOfStoreSymlink;
  local = "${config.home.homeDirectory}/.dotfiles/misc/typst/package/local";
in
{
  xdg.dataFile = {
    "typst/package/local/myStyle".source = mkOutOfStoreSymlink "${local}/myStyle";
    "typst/package/local/myPackages".source = mkOutOfStoreSymlink "${local}/myPackages";
    "typst/package/local/myUtils".source = mkOutOfStoreSymlink "${local}/myUtils";
  };
}
