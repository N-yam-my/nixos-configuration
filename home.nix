{
        home = rec {
                username = "nyammy";
                homeDirectory = "/home/${username}";
                stateVersion = "25.05";
        };
	imports = [
		./git.nix
	];
        programs.home-manager.enable = true;
}
