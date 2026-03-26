{
  lib,
  stdenvNoCC,
  nix-update-script,
  sources,
  ...
}:

stdenvNoCC.mkDerivation (finalAttrs: {

  inherit (sources.finale-maestro) pname version src;
  # src: fetchFromGithub
  
  installPhase = ''
    runHook preInstall

    install -Dm444 *.otf -t $out/share/fonts/

    runHook postInstall
  '';

  passthru = {
    updateScript = nix-update-script { };
  };

  meta = {
    description = "MakeMusic's Finale Maestro font";
    homepage = "https://github.com/eNote-GmbH/Maestro";
    license = lib.licenses.ofl;
    # maintainers = with lib.maintainers; [
    #   n-yam-my
    # ];
    platforms = lib.platforms.all;
  };
})
