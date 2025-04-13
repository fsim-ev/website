{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    papermod-theme = {
      #url = "github:adityatelange/hugo-PaperMod";
      url = "github:haennes/hugo-PaperMod";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let pkgs = import nixpkgs { system = "x86_64-linux"; };

    in {
      devShells.x86_64-linux.default =
        pkgs.mkShell { nativeBuildInputs = with pkgs; [ hugo ]; };

      packages.x86_64-linux = rec {
      default =
        pkgs.callPackage ./pkg.nix { inherit inputs;};
      dev_pkg = pkgs.callPackage ./pkg.nix { inherit inputs; buildArgs = "-b http://127.0.0.1:8000";};
      dev = pkgs.writeShellScriptBin "dev" ''
        cd ${dev_pkg}
        ${pkgs.python3}/bin/python3 -m http.server
      '';
      };
    };
}
