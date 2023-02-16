{
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  outputs = { self, nixpkgs, system, ... }: let pkgs = nixpkgs.legacyPackages.${system}; in {
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
