{ config, pkgs, lib, ... }:

{

programs.zsh = {
  enable = true;
  shellAliases = {
    ll = "ls -l";
    update = "sudo nixos-rebuild switch -I nixos-config=~/nixos/configuration.nix";
  };
  initExtra = ''
    export PROMPT=" %F{32}%c %F{118}λ%F{255} "
  '';
  enableCompletion = true;
  enableAutosuggestions = true;
  history.size = 10000;
};

}
