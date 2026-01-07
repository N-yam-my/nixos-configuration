{
  home = rec {
    username = "nyammy";
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";
  };
	imports = [
		./git.nix
		./zsh.nix
		./neovim
	];
  xdg.enable = true;
  programs.home-manager.enable = true;
}
