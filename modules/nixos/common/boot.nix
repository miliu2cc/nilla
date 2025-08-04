# SPDX-FileCopyrightText: 2025 FreshlyBakedCake
#
# SPDX-License-Identifier: MIT
{pkgs, config, ...}:
{
  boot.loader.systemd-boot.enable = false;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.useOSProber = true;
  boot.kernelPackages = pkgs.linuxKernel.packages.linux_zen;

  #修复wifi问题尝试
  #boot.kernelModules = [ "iwlwifi" ];

  boot.kernelParams = ["module_blacklist=i915" "acpi_call"];
  #boot.extraModulePackages = [config.boot.kernelPackages.acpi_call];

  # ✅ 禁用 WiFi 驱动节能和动态功耗
  #boot.extraModprobeConfig = ''
  #  options iwlwifi power_save=0
  #  options iwlmvm power_scheme=1
  #'';

  # ✅ 安装所有 firmware，包括 Intel 所需的 WiFi 固件
  #hardware.enableAllFirmware = true;
  #hardware.firmware = with pkgs; [ linux-firmware ];
}
