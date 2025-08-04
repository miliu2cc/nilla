<div align="center">

# NixOS config

A configuration without Flakes and Home Manager.

</div>


## Projects Used
- [npins](https://github.com/andir/npins) Used for locking Nix dependencies
- [nilla](https://github.com/nilla-nix/nilla) Main Nix framework implementation
- [nix-maid](https://github.com/viperML/nix-maid) Used as an alternative to Home Manager, managing dotfiles uniformly via symlinks
## Description
The basic configuration has already been completed. The main reason for choosing Nilla is that it provides a way to use Flake modules, which solves the problem of dependency on the ecosystem.



## Resources
I learned and copied form:
### References
- [Dropping Home-Manager](https://ayats.org/blog/no-home-manager)
- [Flakes aren't real](https://jade.fyi/blog/flakes-arent-real/)
- [Pinning nixos with npins](https://jade.fyi/blog/pinning-nixos-with-npins/)
### repo
- [notchtc/nix-config](https://github.com/notchtc/nix-config)
- [viperML/dotfiles](https://github.com/viperML/dotfiles)
- [surfaceflinger/notflake](https://github.com/surfaceflinger/notflake)
- [FreshlyBakedCake/PacketMix](https://github.com/FreshlyBakedCake/PacketMix)
- [jakehamilton/config](https://github.com/jakehamilton/config)
