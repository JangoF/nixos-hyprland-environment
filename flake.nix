{
  inputs = {
    # nixpkgs = {
    #   url = "github:NixOS/nixpkgs/nixos-unstable";
    # };
  };

  outputs = { self, ... }: {
    homeManagerModule = { config, pkgs, ... }: {
      xdg.configFile."hypr/hyprland.conf" = {
        source = ./hyprland.conf;
      };

      xdg.configFile."hypr/config" = {
        source = ./config;
      };

      xdg.configFile."hypr/scripts" = {
        source = ./scripts;
      };
    };
  };
}
