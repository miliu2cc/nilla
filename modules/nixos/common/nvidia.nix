{pkgs, ...}:
let
  kernel = pkgs.linuxKernel.packages.linux_zen;
in
{
  services.xserver.videoDrivers = ["nvidia" ]; #"modesetting"
  hardware.nvidia = {
      package = kernel.nvidiaPackages.stable;
      #prime = {
      #    offload.enable = true;
      #    intelBusId = "PCI:0:2:0";
      #    nvidiaBusId = "PCI:1:0:0";
      #};
      modesetting.enable = true;
      powerManagement.enable = false;
      powerManagement.finegrained = false;
      open = true;
      nvidiaSettings = false;
  };
}
