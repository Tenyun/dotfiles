#!/usr/bin/env zsh

yay -Syu --topdown --cleanafter --removemake
sudo paccache -r
echo 'Press any key to continue...'; read -k1 -s
