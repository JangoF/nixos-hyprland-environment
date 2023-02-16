{ pkgs, grimblast, hyprpicker, ... }: {

  programs = {
    light.enable = true;
  };

  nixpkgs.overlays = [
    grimblast.overlays.default
    hyprpicker.overlays.default
  ];
}
