{ pkgs, ... }: {
	programs.neovim = {
		enable = true;
		viAlias = true;
		vimAlias = true;
		# Packages inside neovim
		extraPackages = with pkgs; [
			deno
			tree-sitter
			skkDictionaries.l
			skkDictionaries.law

      # # LSPs
			# lua-language-server
			# tinymist
		];
		# Install lazy.nvim
		plugins = with pkgs.vimPlugins; [ lazy-nvim ];
	};
	#Expand into ~/.config/nvim/init.lua
	# extraLuaConfig = builtins.readFile ./init.lua;
	#Expand into ~/.config/nvim/lua
	xdg.configFile."nvim/lua" = {
		recursive = true;
		source = ./lua;
	};
}
