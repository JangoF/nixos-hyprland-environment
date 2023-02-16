{
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    grimblast = {
      url = "github:hyprwm/contrib";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprpicker = {
      url = "github:hyprwm/hyprpicker";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, grimblast, hyprpicker, ... }: let pkgs = nixpkgs.legacyPackages."x86_64-linux"; in {
    nixosModules.default = import ./module.nix { inherit pkgs grimblast hyprpicker; };
    homeManagerModules.default = import ./hm-module.nix pkgs;
  };
}
