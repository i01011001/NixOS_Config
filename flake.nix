{
  description = "Void's flake setup";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neovim-nightly.url = "github:nix-community/neovim-nightly-overlay";

    firefox-nightly.url = "github:nix-community/flake-firefox-nightly";

    niri.url = "github:sodiboo/niri-flake";

    # niri = {
    #   url = "github:YaLTer/niri";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    #nvim plugins
    plugin-onedark = {
      url = "github:navarasu/onedark.nvim";
      flake = false;
    };
    plugin-nordic = {
      url = "github:AlexvZyl/nordic.nvim";
      flake = false;
    };
    plugin-moonfly = {
      url = "github:bluz71/vim-moonfly-colors";
      flake = false;
    };
    mellifluos = {
      url = "github:ramojus/mellifluous.nvim";
      flake = false;
    };
    kanso = {
      url = "github:webhooked/kanso.nvim";
      flake = false;
    };
    oh-lucy = {
      url = "github:yazeed1s/oh-lucy.nvim";
      flake = false;
    };
    rasmus = {
      url = "github:kvrohit/rasmus.nvim";
      flake = false;
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    hostname = "nixos";
    username = "i01011001";
  in {
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-rfc-style;

    nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./nixos
        ./overlays
        inputs.stylix.nixosModules.stylix

        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useUserPackages = true;
            useGlobalPkgs = true;
            extraSpecialArgs = {inherit inputs;};
            users.${username}.imports = [./home-manager];
          };
        }
      ];
    };
  };
}
