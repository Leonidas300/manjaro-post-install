#!/bin/bash

echo "Arch post OS install script"
echo "Updating"
sudo pacman -Syu --noconfirm && 

echo "Removing Unnecessary applications:"

sudo pacman -R firefox --noconfirm &&
sudo pacman -R kate --noconfirm &&

echo "Installing Pacman Plugins"
sudo pacman -S flatpak snapd --noconfirm &&
sudo pacman -S libpamac-snap-plugin libpamac-flatpak-plugin --noconfirm &&

echo "Installing Default Apps"

#flatpak
#snap
sudo systemctl start snapd &&#making sure it starts
sudo systemctl enable --now snapd.socket &&#making sure it's enable the service
sudo snap install mailspring &&#installing mail service
sudo snap install bitwarden && 

#pacman
sudo pacman -S nano --noconfirm &&
sudo pacman -S neofetch --noconfirm &&
sudo pacman -S discord --noconfirm &&
sudo pacman -S krita --noconfirm &&
sudo pacman -S steam-manjaro --noconfirm &&
sudo pacman -S blender --noconfirm &&
sudo pacman -S audacious --noconfirm &&
sudo pacman -S vlc --noconfirm &&
sudo pacman -S audacity --noconfirm &&
sudo pacman -S lutris --noconfirm &&
sudo pacman -S etcher --noconfirm && 
sudo pacman -S notepadqq --noconfirm &&
sudo pacman -S nextcloud-client --noconfirm &&
#sudo pacman -S bitwarden --noconfirm &&
sudo pacman -S kodi --noconfirm &&
sudo pacman -S baobab --noconfirm &&

sudo pacman -S wine winetricks wine-mono wine_gecko --noconfirm &&

#download Texturepacker first TODO PureRef Download 
wget https://www.codeandweb.com/download/texturepacker/3.9.2/TexturePacker-3.9.2-x64.msi &&
#winexec /i TexturePacker-3.9.2-x64.msi /qn && 
wine msiexec /i ./TexturePacker-3.9.2-x64.msi /qn && 
rm TexturePacker-3.9.2-x64.msi &&
#development version more updates less stable \/
#sudo pacman -S wine-staging --noconfirm &&

#dotnet
sudo pacman -S dotnet-runtime --noconfirm &&
sudo pacman -S dotnet-sdk --noconfirm &&

#pamac
sudo pamac install plex-media-player --no-confirm &&
sudo pamac install unityhub --no-confirm &&
sudo pamac install spotify --no-confirm &&
sudo pamac install ulauncher --no-confirm &&
sudo pamac install stacer-bin --no-confirm &&
sudo pamac install armorpaint-git --no-confirm &&
sudo pamac install authy --no-confirm &&
sudo pamac install gamehub --no-confirm &&
sudo pamac install bottles --no-confirm && #for wine management
sudo pamac install duplicati-latest --no-confirm && #backup software
sudo pamac install pureref --no-confirm &&
sudo pamac install brave-bin --no-confirm &&

echo "Setting up aliases"

echo alias lsa=\"ls -lah\" >> ~/.zshrc
echo alias sup=\"sudo pacman -Syu\" >> ~/.zshrc

echo "All done."
