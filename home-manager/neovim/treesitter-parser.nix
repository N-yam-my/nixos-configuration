{ pkgs, ... }:
let
  substituteStrings = import ../../lib/substituteStrings.nix;
  parsers = plugins: with plugins; [
    html
    lua
    nix
    python
    query
    rust
    toml
    typst
    vim
    vimdoc
  ];
  parserPaths = (pkgs.vimPlugins.nvim-treesitter.withPlugins parsers).dependencies;
in
{
  # https://github.com/nvim-treesitter/nvim-treesitter#i-get-query-error-invalid-node-type-at-position
  xdg.dataFile."nvim/site/parser".source =
    let
      parserPath = pkgs.symlinkJoin {
        name = "treesitter-parsers";
        paths = parserPaths;
      };
    in
    "${parserPath}/parser";
	#  xdg.configFile."nvim/lua/plugins/nvim-treesitter.lua".text =
	# let
	#   ts_parser_paths = pkgs.lib.pipe parserPaths [
	#     (map to String)
	#     (builtins.concatStringSep ",")
	#   ];
	#   TSConfig = substituteStrings {
	#     file = ./nvim-treesitter.lua;
	#     replacements = {
	#       old = "@ts_parser_paths@";
	#       new = "${ts_parser_paths}";
	#     };
	#   };
	# in
	# ''
	# ${ts_parser_paths}
	# '';
}
