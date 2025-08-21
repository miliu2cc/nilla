{pkgs, ...}:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      ziglang.vscode-zig
      jnoortheen.nix-ide 
        rust-lang.rust-analyzer
        fill-labs.dependi
    ];
  };
  environment.systemPackages = [
      pkgs.vscode-solidity-server
    ];
}
