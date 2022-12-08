{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = { allowUnFree = true; };
      };
      lib = nixpkgs.lib;
      home-linux = {
        home.homeDirectory = "/home/uwo";
        home.username = "uwo";
        configuration = {
          imports = [
            ./hosts/home.nix
          ];
        };
      };
    in {
    homeConfigurations = {
      nixos = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
        modules = [
          home-linux
        ];
      };
      nixosConfigurations = {
        uwo = lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/configuration.nix
          ];
        };
      };
    };
}
