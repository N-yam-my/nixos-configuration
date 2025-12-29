{ pkgs, ... }: {
	programs.git = {
		enable = true;
		userName = "N.yam.my";
		userEmail = "hikonao.yama.1219@gmail.com";
	};

	programs.gh = {
		enable = true;
		settings = {
			editor = "nvim";
		};
	};
}
