{
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  outputs = { self, nixpkgs, ... }: let pkgs = nixpkgs.legacyPackages."x86_64-linux"; in {
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

      packages = with pkgs; [
        bc
        slurp
        swayidle
        swaylock-effects
        notify-desktop
      ];
    };
  };
}
