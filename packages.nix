{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  nekoray
  lshw
  git
  vscode
  telegram-desktop
  nerdfonts
  zsh
  ];
}
