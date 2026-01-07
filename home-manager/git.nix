{ pkgs, ... }: {
	programs.git = {
		enable = true;
    setting.user = {
      name = "N-yam-my";
		  email = "hikonao.yama.1219@gmail.com";
    };
	};

	programs.gh = {
		enable = true;
		settings = {
			editor = "nvim";
		};
	};
}
