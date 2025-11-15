{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      flake-utils,
      nixpkgs,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        lib = pkgs.lib;
      in
      {
        apps.default = flake-utils.lib.mkApp {
          drv = pkgs.writeShellApplication {
            name = "vector-with-stdout-config";
            text = ''
              ${lib.getExe pkgs.vector} --config ${./stdout.yml}
            '';
          };
        };
      }
    );
}
