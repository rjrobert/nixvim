{
  description = "Robert's Nixvim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = {
    self,
    nixpkgs,
    nixvim,
    flake-parts,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem = {system, ...}: let
        pkgs = import nixpkgs {inherit system;};
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        nixvimModule = {
          inherit system;
          module = import ./config;
        };
        nvim = nixvim'.makeNixvimWithModule nixvimModule;
      in {
        checks = {
          default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };

        packages = {
          default = nvim;
        };

        devShells.default = pkgs.mkShell {
          packages = [nvim];
          shellHook = ''
            echo "Welcome to the Nixvim development shell!"
            NVIM_APPNAME="nixvim"
            nixvim-print-init
          '';
        };
      };
    };
}
