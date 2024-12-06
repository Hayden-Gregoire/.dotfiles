#!/bin/bash
if [ "$(uname)" != "Linux" ]; then
  echo "Warning: This script is intended for Linux only, but continuing on macOS." >> linuxsetup.log
fi
echo "OS check passed."

mkdir -p ~/.TRASH
echo ".TRASH directory is created or already exists."

if [ -f ~/.nanorc ]; then
  mv ~/.nanorc ~/.bup_nanorc
  echo "Current .nanorc file was changed to .bup_nanorc" >> linuxsetup.log
fi

cat ~/.dotfiles/etc/nanorc > ~/.nanorc
echo ".nanorc file has been overwritten."
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
echo "source command added to .bashrc."
