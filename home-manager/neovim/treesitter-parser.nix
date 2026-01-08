{ pkgs, ... }:
{
  # https://github.com/nvim-treesitter/nvim-treesitter#i-get-query-error-invalid-node-type-at-position
  xdg.dataFile."nvim/site/parser".source =
    let
      parsers = pkgs.symlinkJoin {
        name = "treesitter-parsers";
        paths =
          (pkgs.vimPlugins.nvim-treesitter.withPlugins (
            plugins: with plugins; [
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
            ]
          )).dependencies;
      };
    in
    "${parsers}/parser";
}
