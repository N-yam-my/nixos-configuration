{
  home = rec {
    username = "nyammy";
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";
  };
	imports = [
		./home-manager/git.nix
		./home-manager/zsh.nix
		./home-manager/neovim.nix
	];
  xdg.enable = true;
  programs.home-manager.enable = true;
}
