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
  # skkeleton_indicator-nvim = pkgs.vimUtils.buildVimPlugin {
  #   inherit (sources.skkeleton_indicator) pname version src;
  # };
in
{
  programs.neovim.extraLuaConfig =
    let
      plugins = with pkgs.vimPlugins; [
      denops-vim
      nvim-web-devicons

      tokyonight-nvim
      lualine-nvim

      nvim-treesitter
      nvim-lspconfig

      nvim-autopairs
      {
        name = "Comment.nvim";
        path = comment-nvim;
      }
      indent-blankline-nvim
      rainbow-delimiters-nvim
      nvim-surround

      skkeleton
      # {
      #   name = "skkeleton_indicator.nvim";
      #   path = skkeleton_indicator-nvim;
      # }

      pum-vim
      ddc-vim
      ddc-ui-native
      ddc-ui-pum
      ddc-fuzzy
      ddc-filter-matcher_head
      ddc-filter-sorter_rank
      ddc-source-around
      ddc-source-file
      ddc-source-lsp
      ddc-source-lsp-setup
      vim-sonictemplate
      {
        name = "denops-popup-preview.vim";
        path = denops-popup-preview-vim;
      }
      #   {
      #     name = "LuaSnip";
      #     path = luasnip;
      #   }

      typst-preview-nvim

      vimdoc-ja
      vim-startuptime
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

