{ pkgs, ... }:
# let
#   substituteStrings = import ../../lib/substituteStrings.nix;
# in
{
  # https://github.com/nvim-treesitter/nvim-treesitter#i-get-query-error-invalid-node-type-at-position
  xdg.dataFile."nvim/site/parser".source =
  let
	  # parsers = plugins: with plugins; [
	  #   html
	  #   lua
	  #   nix
	  #   python
	  #   query
	  #   rust
	  #   toml
	  #   typst
	  #   vim
	  #   vimdoc
	  # ];
	  parserPaths = (pkgs.vimPlugins.nvim-treesitter.withAllGrammars.dependencies;
    parserPath = pkgs.symlinkJoin {
      name = "treesitter-parsers";
      paths = parserPaths;
    };
  in
  "${parserPath}/parser";
}
