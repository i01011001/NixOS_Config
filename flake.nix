{
  description = "Void's flake setup";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

	stylix.url = "github:danth/stylix";

    #### neovim
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neovim-nightly.url = "github:nix-community/neovim-nightly-overlay";
    firefox-nightly.url = "github:nix-community/flake-firefox-nightly";

    #### hyprland
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    split-monitor-workspaces = {
         url = "github:Duckonaut/split-monitor-workspaces";
         inputs.hyprland.follows = "hyprland"; 
	};

    nixCats.url = "github:BirdeeHub/nixCats-nvim";

    # hyprfocus = {
    # 	url = "github:pyt0xic/hyprfocus";
    # 	inputs.hyprland.follows = "hyprland";
    # };

    #### extra
    # ghostty.url = "github:ghostty-org/ghostty";
    # zephyr.url = "github:adisbladis/zephyr-nix";
  };

  outputs =
    { nixpkgs, home-manager, ... }@inputs:
    let
      hostname = "nixos";
      username = "i01011001";
    in
    {
      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-rfc-style;

      nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./nixos
          ./overlays
		  inputs.stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useUserPackages = true;
              # useGlobalPkgs = true;
              extraSpecialArgs = { inherit inputs; };
              users.${username} = {
                imports = [
                  ./home-manager
                ];
              };
            };
          }
        ];
      };
    };
}
