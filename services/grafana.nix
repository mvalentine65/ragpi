{ config, pkgs, ... }:

{
  services.grafana = {
    enable = true;
    settings.server = {
      http_port = 3000;
      domain = "localhost";
      root_url = "http://localhost:3000";
    };
  };
}
