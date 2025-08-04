{pkgs, ...}:
let
  awcc = pkgs.callPackage ./awcc.nix {};
in {
  environment.systemPackages = [ awcc ];
}
