{
				description = "test flake";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
		nixos-wsl.url = "github:nix-community/NixOS-WSL/release-25.05";
		home-manager = {
			url = "github:nix-community/home-manager/release-25.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  	};

	outputs = inputs@{ self, nixpkgs, nixos-wsl, home-manager, ... }: {
		nixosConfigurations = {
			nyammy = nixpkgs.lib.nixosSystem {
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
																				inherit inputs;
																};
																modules = [
																				./home.nix
																];
												};
								};
  	};
}
