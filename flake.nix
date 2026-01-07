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
    sources = pkgs.callPackage ./_sources/generated.nix { };
  in
  {
    nixosConfigurations = {
      G83HS = nixpkgs.lib.nixosSystem {
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
        pkgs = import nixpkgs {
          system = "x86_64-linux";
          configure.allowUnfree = true;
        };
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
