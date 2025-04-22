{ pkgs ? import <nixpkgs> { } }:

pkgs.dockerTools.buildImage {
  name = "ragpi-image";
  tag = "latest";

  contents = [
    pkgs.bashInteractive
    pkgs.python311Full
    pkgs.grafana
  ];

  config = {
    Cmd = [ "bash" ];
  };
}
