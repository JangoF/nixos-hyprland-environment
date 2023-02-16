{
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  outputs = { self, nixpkgs, ... }: {
    homeManagerModules.default = import ./hm-module.nix { pkgs = nixpkgs.legacyPackages."x86_64-linux"; };
  };
}
