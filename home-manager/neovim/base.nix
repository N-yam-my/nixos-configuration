{ pkgs, ... }: {
	programs.neovim = {
		enable = true;
		viAlias = true;
		vimAlias = true;
		# Packages inside neovim
		extraPackages = with pkgs; [
      # dependencies
			deno
			# gcc
			# tree-sitter

      # skk dictionaries
      skkDictionaries.l
			skkDictionaries.law

      # LSPs
			lua-language-server
      rust-analyzer
			tinymist
      websocat
      typstyle
		];
		# Install lazy.nvim
		plugins = with pkgs.vimPlugins; [ lazy-nvim ];
	};
}
