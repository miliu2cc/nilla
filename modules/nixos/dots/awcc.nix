#{pkgs, ...}:
#let
#  awcc = pkgs.callPackage /home/n3xt2f/Project/AWCC/awcc.nix {};
#in {
#  environment.systemPackages = [ awcc ];
#}
{
  services.udev.extraRules = ''
    SUBSYSTEM=="usb", ATTRS{idVendor}=="187c", ATTRS{idProduct}=="0551", MODE="0660",GROUP="plugdev"
  '';

}
