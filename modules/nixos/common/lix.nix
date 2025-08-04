# SPDX-FileCopyrightText: 2025 FreshlyBakedCake
#
# SPDX-License-Identifier: MIT

{ pkgs, project, ... }:
{
  imports = [
    (import "${project.inputs.lix-module.result}/module.nix" { lix = project.inputs.lix.src; })
  ];

  nix = {
        extraOptions = "extra-experimental-features = nix-command flakes";
        #generateNixPathFromInputs = true;
        #generateRegistryFromInputs = true;
        settings.trusted-users = ["root" "n3xt2f"];
  };

  nix.gc = {
    automatic = true;
    persistent = true;
    options = "--delete-older-than 7d";
    dates = "08:30";
  };

  users.users.n3xt2f = {
    isNormalUser = true;
    description = "n3xt2f";
    extraGroups = [ "networkmanager" "wheel" "plugdev"];
    shell = pkgs.nushell;
  };
}
