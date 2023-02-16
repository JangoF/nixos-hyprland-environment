{
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  outputs = { self, nixpkgs, ... }: let pkgs = nixpkgs.legacyPackages."x86_64-linux"; in {
    homeManagerModules.default = import ./hm-module.nix { inherit pkgs; lib = nixpkgs.lib; };
  };
}
