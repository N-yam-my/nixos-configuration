{ config, ... }:
let
  pwd = "${config.home.homeDirectory}/.dotfiles/home-manager/neovim";
in
{
  inherit pwd;
}
