{ config, pkgs, lib, ... }: with lib; let cfg = config.programs.hyprland-environment; in {

  options.programs.hyprland-environment = {
    enable = mkEnableOption "hyprland-environment";

    config = mkIf cfg.enable {
      home.packages = with pkgs; [
        bc
        slurp
        swayidle
        swaylock-effects
        notify-desktop
        wf-recorder
        playerctl
      ];

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
