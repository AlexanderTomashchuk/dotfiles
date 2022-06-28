#! /bin/sh

echo "Copying dotfiles to this folder..."
#copying folders
cp -rp ~/.config/karabiner/ ./karabiner
cp -rp ~/.config/fish/ ./fish
cp -rp ~/.config/nvim/ ./nvim
cp -rp ~/.config/tmux/ ./tmux
 
#copying files
cp ~/.ideavimrc .ideavimrc
cp ~/.npmrc .npmrc

