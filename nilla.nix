let
  pins = import ./npins;
  nilla = import pins.nilla;
  compat = import pins.flake-compat;
  nixpkgs-flake = compat.load { src = pins.nixpkgs; };

  loaders = {
    lix = "raw";
  };

  settings = {
    nixpkgs.configuration.allowUnfree = true;
    stylix.inputs.nixpkgs = nixpkgs-flake;
  };
in
nilla.create (
  { config }:
  {

    includes = [
      ./lib
      ./systems

      "${pins.nilla-home}/modules/home.nix"
      "${pins.nilla-home}/modules/nixos.nix"
      "${pins.nilla-nixos}/modules/nixos.nix"
    ];

    config = {
      inputs = builtins.mapAttrs (name: pin: {
        src = pin;

        loader = loaders.${name} or config.lib.constants.never;
        settings = settings.${name} or config.lib.constants.never;
      }) pins;

      modules = {
        nilla = {
          lib = ./lib;
          systems = ./systems;
        };

        nixos = {
          common = ./modules/nixos/common;
          desktop = ./modules/nixos/desktop;
          dots = ./modules/nixos/dots;
        };

      };

      shells.default = {
        systems = [ "x86_64-linux" ];

        shell =
          {
            mkShell,
            npins,
            system,
          }:
          mkShell {
            packages = [
              config.inputs.nilla-cli.result.packages.nilla-cli.result.${system}
              config.inputs.nilla-home.result.packages.nilla-home.result.${system}
              config.inputs.nilla-nixos.result.packages.nilla-nixos.result.${system}
              npins
            ];
          };
      };
    };
  }
)
