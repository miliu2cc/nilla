{
  networking.networkmanager.enable = true;
  #networking.wireless.iwd.enable = true;
  #services.connman.wifi.backend = "iwd";
  #networking.wireless.iwd.settings = {
  #  Settings = {
  #    EnableNetworkConfiguration = true;
  #  };
  #};
  networking.firewall.enable = false;
}
