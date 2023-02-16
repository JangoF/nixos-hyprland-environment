# self: { config, pkgs, lib, ... }: let cfg = config.programs.hyprland-environment; in {
{ pkgs, ... }: {

  # options.programs.hyprland-environment = {
  #   enable = lib.mkEnableOption "hyprland-environment";

  #   config = lib.mkIf cfg.enable {
      home.packages = with pkgs; [
        bc
        slurp
        swayidle
        swaylock-effects
        notify-desktop
        wf-recorder
        playerctl
        # grimblast
        # hyprpicker
      ];

      # xdg.configFile."hypr/hyprland.conf" = {
      #   source = ./hyprland/hyprland.conf;
      # };

      # xdg.configFile."hypr/config" = {
      #   source = ./hyprland/config;
      # };

      # xdg.configFile."hypr/scripts" = {
      #   source = ./hyprland/scripts;
      # };

      xdg.configFile."hypr" = {
        source = ./hyprland;
      };
  #   };
  # };
}
