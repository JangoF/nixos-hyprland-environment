{ pkgs, ... }: {
  home.packages = with pkgs; [
    bc
    slurp
    swayidle
    swaylock-effects
    notify-desktop
    wf-recorder
    playerctl
  ];

  xdg.configFile."hypr" = {
    source = ./hyprland;
  };
  
  imports = [
    ./programs/source/wofi.nix

    ./programs/eww.nix
    ./programs/mako.nix
    ./programs/theme.nix
    ./programs/wofi.nix
  ];
}
