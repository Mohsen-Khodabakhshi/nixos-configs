{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  nekoray
  lshw
  git
  jetbrains-toolbox
  vscode
  ];
}
