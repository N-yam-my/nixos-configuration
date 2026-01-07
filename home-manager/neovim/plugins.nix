{
  pkgs,
  lib,
  sources,
  ...
}:
let
  substituteStrings = import ../../lib/substituteStrings.nix;

  vimdoc-ja = pkgs.vimUtils.buildVimPlugin {
    inherit (sources.vimdoc-ja) pname version src;
  };
  skkeleton = pkgs.vimUtils.buildVimPlugin {
    inherit (sources.skkeleton) pname version src;
  };
  skkeleton_indicator-nvim = pkgs.vimUtils.buildVimPlugin {
    inherit (sources.skkeleton_indicator) pname version src;
  };
in
{
  programs.neovim.extraLuaConfig =

    let
      plugins = with pkgs.vimPlugins; [
      tokyonight-nvim
      rainbow-delimiters-nvim
      nvim-autopairs

      vimdoc-ja
      vim-startuptime
      
      skkeleton
      {
        name = "skkeleton_indicator.nvim";
        path = skkeleton_indicator-nvim;
      }

      #   {
      #     name = "LuaSnip";
      #     path = luasnip;
      #   }
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
        file = ./init.lua;
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

  # xdg.dataFile = {
  #   "skk/SKK-JISYO.L".source = "${pkgs.skkDictionaries.l}/share/skk/SKK-JISYO.L";
  # };
}
