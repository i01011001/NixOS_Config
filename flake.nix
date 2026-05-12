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

    # neovim-nightly.url = "github:nix-community/neovim-nightly-overlay";

    niri = {
      url = "github:niri-wm/niri";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    helium.url = "github:FKouhai/helium2nix/main";

    # kanso = {
    #   url = "github:webhooked/kanso.nvim";
    #   flake = false;
    # };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        # IMPORTANT: To ensure compatibility with the latest Firefox version, use nixpkgs-unstable.
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };
    # firefox-nightly.url = "github:nix-community/flake-firefox-nightly";

    # codex = {
    #   url = "github:openai/codex";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # hyprland.url = "github:hyprwm/Hyprland?submodules=1";
    #
    # hy3 = {
    #   url = "github:outfoxxed/hy3";
    #   inputs.hyprland.follows = "hyprland";
    # };

    # scroll-flake = {
    #   url = "github:AsahiRocks/scroll-flake";
    #   inputs.nixpkgs.follows = "nixpkgs"; # this assumes nixos unstable
    # };
    #
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
        ./system

        inputs.stylix.nixosModules.stylix

        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useUserPackages = true;
            useGlobalPkgs = true;
            extraSpecialArgs = {inherit inputs;};
            users.${username}.imports = [./home];
          };
        }
      ];
    };
  };
}
