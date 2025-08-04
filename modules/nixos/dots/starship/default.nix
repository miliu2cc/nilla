{pkgs, ...}:
{
  packages = [
    pkgs.starship
  ];
  file.home.".config/starship.toml".source = ./starship.toml;
}
