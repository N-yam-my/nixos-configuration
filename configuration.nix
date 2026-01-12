# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

# NixOS-WSL specific options are documented on the NixOS-WSL repository:
# https://github.com/nix-community/NixOS-WSL

{ pkgs, sources, ... }:
let
  biz-ud-mincho = pkgs.callPackage ./pkgs/biz-ud-mincho { inherit pkgs sources; };
in
{
	# imports = [
	# 	# include NixOS-WSL modules
	# 	<nixos-wsl/modules>
  	# ];

	wsl.enable = true;
	wsl.defaultUser = "nyammy";

	nix = {
		settings = {
      auto-optimise-store = true;
			experimental-features = [ "nix-command" "flakes" ];
		};
		gc = {
			automatic = true;
			dates = "weekly";
			options = "--delete-older-than 7d";
		};
	};
	users.users.nyammy = {
		shell = pkgs.zsh;
	};

	programs = {
		git = {
			enable = true;
		};
		neovim = {
			enable = true;
			defaultEditor = true;
			viAlias = true;
			vimAlias = true;
		};
		starship = {
			enable = true;
		};
		zsh = {
			enable = true;
		};
	};

  time.timeZone = "Asia/Tokyo";

  fonts = {
    fontDir.enable = true;
    enableGhostscriptFonts = true;
    packages = with pkgs; [
      # noto fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-color-emoji
      noto-fonts-monochrome-emoji
      # morisawa fonts
      biz-ud-gothic
      biz-ud-mincho # local package
      # monospace fonts
      moralerspace-hw
      udev-gothic-nf
    ];
    fontconfig.defaultFonts = {
      serif = [
        "Noto Serif CJK JP"
      ];
      sansSerif = [
        "Udev Gothic NF"
        "Noto Color Emoji"
      ];
      emoji = [
        "Noto Color Emoji"
      ];
    };
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It's perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?
}
