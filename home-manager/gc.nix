{
  config,
  ...
}:
let
  frequency = if config.nix.gc ? "dates" then "dates" else "frequency";
in
{
  nix = {
    gc = {
      ${frequency} = "weekly";
      automatic = true;
      options = "--delete-older-than 7d";
    };
  };
}
