{
        home = rec {
                username = "nyammy";
                homeDirectory = "/home/${username}";
                stateVersion = "25.05";
        };
	imports = [
		./home-manager/git.nix
		./home-manager/zsh.nix
		./home0manager/neovim.nix
	];
        programs.home-manager.enable = true;
}
