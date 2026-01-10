{
  pkgs,
  lib,
  sources,
  ...
}:
let
  substituteStrings = import ../../lib/substituteStrings.nix;

  ddc-source-lsp-setup = pkgs.vimUtils.buildVimPlugin {
    inherit (sources.ddc-source-lsp-setup) pname version src;
  };
  ddc-filter-matcher_prefix = pkgs.vimUtils.buildVimPlugin {
    inherit (sources.ddc-filter-matcher_prefix) pname version src;
  };
  ddc-filter-sorter_lsp_kind = pkgs.vimUtils.buildVimPlugin {
    inherit (sources.ddc-filter-sorter_lsp_kind) pname version src;
  };
  ddc-filter-converter_kind_labels = pkgs.vimUtils.buildVimPlugin {
    inherit (sources.ddc-filter-converter_kind_labels) pname version src;
  };
  skkeleton = pkgs.vimUtils.buildVimPlugin {
    inherit (sources.skkeleton) pname version src;
  };
  denops-popup-preview-vim = pkgs.vimUtils.buildVimPlugin {
    inherit (sources.denops-popup-preview-vim) pname version src;
  };
  vim-sonictemplate = pkgs.vimUtils.buildVimPlugin {
    inherit (sources.vim-sonictemplate) pname version src;
  };
  vimdoc-ja = pkgs.vimUtils.buildVimPlugin {
    inherit (sources.vimdoc-ja) pname version src;
  };
  skkeleton_indicator-nvim = pkgs.vimUtils.buildVimPlugin {
    inherit (sources.skkeleton_indicator-nvim) pname version src;
  };
in
{
  programs.neovim.extraLuaConfig =
    let
      plugins = with pkgs.vimPlugins; [
      # dependencies
      denops-vim
      nvim-web-devicons

      # Visual
      tokyonight-nvim
      lualine-nvim

      nvim-treesitter

      nvim-autopairs
      {
        name = "Comment.nvim";
        path = comment-nvim;
      }
      indent-blankline-nvim
      rainbow-delimiters-nvim
      nvim-surround

      # skkeleton 
      skkeleton
      {
        name = "skkeleton_indicator.nvim";
        path = skkeleton_indicator-nvim;
      }

      # completion
      pum-vim
      ddc-vim
      # ddc-ui-native
      ddc-ui-pum
      ddc-fuzzy
      ddc-filter-matcher_head
      ddc-filter-sorter_rank
      ddc-source-around
      ddc-source-file
      ddc-source-lsp
      ddc-source-lsp-setup
      ddc-filter-matcher_prefix
      ddc-filter-sorter_lsp_kind
      ddc-filter-converter_kind_labels
      {
        name = "denops-popup-preview.vim";
        path = denops-popup-preview-vim;
      }
      # snippet
      #   {
      #     name = "LuaSnip";
      #     path = luasnip;
      #   }

      # utility
      nvim-lspconfig
      vim-sonictemplate
      vimdoc-ja
      vim-startuptime

      # filetype
      typst-preview-nvim
      ];
      mkEntryFromDrv =
        drv:
        if lib.isDerivation drv then
          {
            name = "${lib.getName drv}";
            path = drv;
          }
        else
          drv;
      lazyPath = pkgs.linkFarm "lazy-plugins" (builtins.map mkEntryFromDrv plugins);
      lazyConfig = substituteStrings {
        file = ./nvim/init.lua;
        replacements = [
          {
            old = "@lazyPath@";
            new = "${lazyPath}";
          }
        ];
      };
    in
    ''
      ${lazyConfig}
    '';
}

