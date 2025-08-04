let
  pkgs = import <nixpkgs> {};
in
pkgs.stdenv.mkDerivation rec {
  pname = "awcc";
  version = "1.0";

  src = ./.;

  nativeBuildInputs = [ pkgs.gcc  ];
  buildInputs = [
    pkgs.libusb1
  ];

  buildPhase = ''
    make
  '';

  installPhase = ''
    mkdir -p $out/bin
    mv awcc $out/bin
  '';
}
