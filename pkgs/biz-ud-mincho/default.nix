{
  pkgs,
  lib,
  stdenvNoCC,
  nix-update-script,
  sources,
  ...
}:

stdenvNoCC.mkDerivation (finalAttrs: {

  inherit (sources.biz-ud-mincho) pname version src;
  # src: fetchUrl => hoge.zip
  unpackPhase = ''
    runHook preUnpack
    
    ${pkgs.unzip}/bin/unzip $src

    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    install -Dm444 fonts/ttf/*.ttf -t "$out/share/fonts/truetype/"

    runHook postInstall
  '';

  passthru = {
    updateScript = nix-update-script { };
  };

  meta = {
    description = "Universal Design Japanese font";
    homepage = "https://github.com/googlefonts/morisawa-biz-ud-mincho";
    license = lib.licenses.ofl;
    # maintainers = with lib.maintainers; [
    #   n-yam-my
    # ];
    platforms = lib.platforms.all;
  };
})
