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
		./zsh.nix
		./neovim
    ./typst.nix
	];
  xdg.enable = true;
  programs.home-manager.enable = true;
}
