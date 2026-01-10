{ ... }:
{
  home = rec {
    username = "nyammy";
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";
  };
	imports = [
		./gc.nix
		./git.nix
		./neovim
    ./typst.nix
		./zsh
	];
  xdg.enable = true;
  programs.home-manager.enable = true;
}
