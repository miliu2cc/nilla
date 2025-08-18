{pkgs, ...}:
{
  packages = [
    pkgs.niri
  ];
  file.home.".config/niri/config.kdl".source = ./config.kdl;
}
