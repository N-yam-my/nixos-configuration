{
        home = rec {
                username = "nyammy";
                homeDirectory = "/home/${username}";
                stateVersion = "25.05";
        };
	imports = [
		./home-manager/git.nix
		./home-manager/zsh.nix
	];
        programs.home-manager.enable = true;
}
