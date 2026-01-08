{ pkgs, ... }:
# let
#   substituteStrings = import ../../lib/substituteStrings.nix;
# in
{
  # https://github.com/nvim-treesitter/nvim-treesitter#i-get-query-error-invalid-node-type-at-position
  xdg.dataFile."nvim/site/parser".source =
  let
    parserPath = pkgs.symlinkJoin {
      name = "treesitter-parsers";
      paths = pkgs.vimPlugins.nvim-treesitter.withAllGrammars.dependencies;
    };
  in
  "${parserPath}/parser";
}
