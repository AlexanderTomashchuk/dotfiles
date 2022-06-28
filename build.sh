#! /bin/sh

echo "Copying dotfiles to this folder..."
# Copying folders
cp -rp ~/.config/karabiner/ ./karabiner
cp -rp ~/.config/fish/ ./fish
cp -rp ~/.config/nvim/ ./nvim
cp -rp ~/.config/tmux/ ./tmux
 
# Copying files
cp ~/.ideavimrc .ideavimrc
cp ~/.config/vimium-options.json vimium-options.json
cp ~/.npmrc .npmrc

