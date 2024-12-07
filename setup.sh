#!/bin/bash
flatpak install io.github.zen_browser.zen vesktop;
sudo su;
    zypper ref;
    zypper update;

    zypper --non-interactive in fastfetch git-core kitty zapzap fish rofi hyprland hyprland-devel waybar opi sof-firmware hyprshot hyprpaper tlp jetbrains-mono-fonts;
    opi vscode;

    git clone https://github.com/joseporcar/tumbleweed_dotfiles;

    systemctl enable tlp.service;
    systemctl mask systemd-rfkill.service systemd-rfkill.socket;
    cp tlp.conf /etc;

    cp terminal/kitty.conf ~/.config/kitty
    cp terminal/fish.conf 

    cp -r hypr/ ~/.config;

    mkdir -p ~/.local/share/rofi/themes/
    cp rofi/themes/* ~/.local/share/rofi/themes
    mkdir ~/.config/rofi
    cp rofi/config.rasi ~/.config/rofi

exit;

chsh -s /usr/bin/fish



