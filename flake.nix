{
  description = "A very basic flake";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    home = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    }; 
  };

  outputs = { self, nixpkgs, home, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = { allowUnFree = true; };
      };
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        uwo = lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/configuration.nix ];
        };
      };
      homeConfig = {
        uwo = home.lib.homeManagerConfiguration rec {
          inherit system pkgs;
          home.homeDirectory = "/home/uwo";
          home.username = "uwo";
          stateVersion = "22.11";
          # configuration = { imports = [ ./hosts/home.nix ]; };
        };
      };
    };
}
