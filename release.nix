let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/20.09.tar.gz") { };
in
  pkgs.haskellPackages.callPackage ./default.nix { }
