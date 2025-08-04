
{
  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./fonts.nix
    ./i18n.nix
    ./lix.nix
    ./networking.nix
    ./nilla-nix.nix
    ./nvidia.nix
    ./sudo.nix
  ];

  time.timeZone = "Asia/Shanghai";
  services.displayManager.gdm = {
    enable = true;
    wayland = true;
  };
}
