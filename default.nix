{ inputs, pkgs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./config/default.nix
    ./config/default.nix
  ];

  nixvim.enable = true;
  nixvim.clipboard.register = "unnamedplus";
}
