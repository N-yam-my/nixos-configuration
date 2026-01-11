{
	description = "dotfiles for G83/HS";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		nixos-wsl.url = "github:nix-community/NixOS-WSL/main";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };

	outputs = { self, nixpkgs, nixos-wsl, home-manager, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    sources = pkgs.callPackage ./_sources/generated.nix { };
  in
  {
    nixosConfigurations = {
      G83HS = nixpkgs.lib.nixosSystem {
        inherit pkgs;
        specialArgs = {
          inherit sources;
        };
				system = "x86_64-linux";
				modules = [
					./configuration.nix
					nixos-wsl.nixosModules.default
          {
						system.stateVersion = "25.05";
						wsl.enable = true;
          }
        ];
      };
    };
    homeConfigurations = {
      nyammy = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = {
          inherit inputs sources;
        };
        modules = [
          ./home-manager
        ];
      };
    };
  };
}
