{
  description = "RAGPi: Reproducible RAG system for Raspberry Pi with monitoring";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
      in {
        packages.docker-image = pkgs.callPackage ./docker/default.nix { };       
        devShells.default = pkgs.mkShell {
          buildInputs = [ pkgs.docker-compose pkgs.just pkgs.grafana ];
        };
      }
    );
}
