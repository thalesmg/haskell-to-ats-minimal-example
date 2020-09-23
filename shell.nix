let
  sources = import nix/sources.nix;
  nixpkgs = import sources.nixpkgs {};
  ats = nixpkgs.callPackage nix/ats/ats.nix {};
in
nixpkgs.mkShell {
  buildInputs = [
    ats
    nixpkgs.ghc
  ];
}
