#!/bin/bash

set repo=$(pwd)

echo "> Bootstrapping Arch installation"

sudo pacman -Syyu i3-gaps sddm git discord

echo "> Installed basic apps"

echo "> Enabling SDDM"

sudo systemctl enable sddm

echo "> Installing yay"
echo "> Approve any prompts"
cd ~
mkdir -p .local/src
cd .local/src
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo "> Installing dotfiles"
cd $repo
cd ..
cp -r .config ~

echo "> Installing polybar"
yay -Syy polybar-git zscroll-git playerctl

echo "> Installing spotify"
yay -S spotify

echo "> Done!"
