{ pkgs, config, ... }:
let
  inherit (config.lib.file) mkOutOfStoreSymlink;
  pwd = "${config.home.homeDirectory}/.dotfiles/home-manager/neovim";
in
{
	# Expand into ~/.config/nvim/init.lua
	# extraLuaConfig = builtins.readFile ./init.lua;
	# Expand into ~/.config/
	xdg.configFile = {
		"nvim/lua/settings".source = mkOutOfStoreSymlink "${pwd}/nvim/lua/settings";
		"nvim/lua/plugins".source = mkOutOfStoreSymlink "${pwd}/nvim/lua/plugins";
		"nvim/after/queries".source = mkOutOfStoreSymlink "${pwd}/nvim/after/queries";
  };
  # Expand into ~/.local/share
  xdg.dataFile = {
    "skk/SKK-JISYO.L".source = "${pkgs.skkDictionaries.l}/share/skk/SKK-JISYO.L";
    "skk/SKK-JISYO.law".source = "${pkgs.skkDictionaries.law}/share/skk/SKK-JISYO.law";
    # "skk/skkeleton".source = mkOutOfStoreSymlink "${builtins.toString config.home.homeDirectory}/.dotfiles/misc/skkeleton"

    # https://github.com/nvim-treesitter/nvim-treesitter#i-get-query-error-invalid-node-type-at-position
    "nvim/site/parser".source =
	  let
	    parserPath = pkgs.symlinkJoin {
	      name = "treesitter-parsers";
	      paths = pkgs.vimPlugins.nvim-treesitter.withAllGrammars.dependencies;
	    };
    in
    "${parserPath}/parser";
    "nvim/site/queries".source ="${pkgs.vimPlugins.nvim-treesitter}/runtime/queries";
  };
}
