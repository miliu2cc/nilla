{pkgs, ...}:
{
  packages = [
    pkgs.niri
  ];
  #file.home.".config/starship.toml".source = ./starship.toml;
}
