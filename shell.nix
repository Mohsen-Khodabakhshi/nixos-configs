{ config, pkgs, ... }:

{
    users.defaultUserShell=pkgs.zsh;

    programs = {
        zsh = {
            enable = true;
            autosuggestions.enable = true;
            syntaxHighlighting.enable = true;
            ohMyZsh = {
                enable = true;
                theme = "robbyrussell";
                plugins = [
                    "git"
                    "docker"
                    "python"
                ];
            };
        };
    };
}
