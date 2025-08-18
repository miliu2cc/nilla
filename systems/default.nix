{config}: {
  config.systems.nixos = {
    "nixos" = {
      pkgs = config.inputs.nixpkgs.result.x86_64-linux;

      modules = [
        #config.inputs.disko.result.nixosModules.disko
        #"${config.inputs.nixos-hardware.result}/common/cpu/intel/skylake"
        #"${config.inputs.nixos-hardware.result}/common/gpu/amd"

        config.modules.nixos.common
        config.modules.nixos.desktop
        config.modules.nixos.dots

        ./nixos
      ];

      args = {
        project = config;
        host = "nixos";
        system = "x86_64-linux";
      };

      #homes = {inherit (config.homes) "n3xt2f:x86_64-linux";};
    };
  };
}
