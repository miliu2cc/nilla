{
  pkgs,
  project,
  config,
  ...
}:
{
  imports = [
    ./daed.nix
    ./awcc.nix
    ./obs.nix
    ./nvf
    ./vscode

    project.inputs.nix-maid.result.nixosModules.default
    project.inputs.daed.result.nixosModules.dae
    project.inputs.daed.result.nixosModules.daed
    project.inputs.nvf.result.nixosModules.default
  ];

  virtualisation.waydroid.enable = true;

  users.users.n3xt2f = {
    maid = {
      # nix-maid configuration
      packages = [
        pkgs.git
      ];
      file.home.".gitconfig".text = ''
        [user]
          email=miliu2cc@gmail.com
          name=miliu2cc
      '';
      imports = [
        ./hyprland
        ./starship
        ./nushell
        ./niri
        ./yazi
      ];
    };
  };

  #idk how to categorize these or dont need config files
  environment.systemPackages = with pkgs; [
    #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    #  wget
    git
    chromium
    ghostty
    mesa
    libGL

    rustc
    cargo
    solc

    #vscodium
    #zed-editor
    macchina
    yazi
    xfce.thunar

    spotify
    feishin
    animeko

    #niri shell pkgs
    quickshell
    material-symbols
    inter
    fira-code
    cava
    wl-clipboard
    cliphist
    ddcutil
    libsForQt5.qt5ct
    kdePackages.qt6ct
    matugen
    wallust

    swww

    wechat-uos
    #qq
    #telegram-desktop
    vesktop

    pavucontrol

    npins

    #zed-editor

    pixi
    #iwd
    #project.inputs.awcc.result."x86_64-linux"

    bottom
    toybox
  ];

  
}
