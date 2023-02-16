{
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  outputs = { self, nixpkgs, ... }: let pkgs = nixpkgs.legacyPackages."x86_64-linux"; in {
    inherit (nixpkgs) lib;
    inherit pkgs;
    homeManagerModules.default = import ./hm-module.nix self;
  };
}
