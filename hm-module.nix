{ pkgs, ... }: {

  xdg.configFile."hypr/hyprland.conf" = {
    source = ./hyprland.conf;
  };

  xdg.configFile."hypr/config" = {
    source = ./config;
  };

  xdg.configFile."hypr/scripts" = {
    source = ./scripts;
  };

  home.packages = with pkgs; [
    bc
    slurp
    swayidle
    swaylock-effects
    notify-desktop
    wf-recorder
    playerctl
  ];
}
