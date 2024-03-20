#!/bin/bash

if [ $(which apt < /dev/null) ] || [ $(which dpkg < /dev/null) ]; then
  clear

  sudo apt --fix-broken install

  clear
  
  echo "Starting system update..."

  if [ "$EUID" -ne 0 ]; then
    echo "This script requires superuser permissions. Execute with sudo."
    exit 1
  fi

  sudo apt update

  sudo apt full-upgrade -y

  clear

  [ -x "$(command -v flatpak)" ] && flatpak update -y;

  clear

  echo "Performing system cleanup..."
  sudo apt autoclean -y
  sudo apt autoremove -y
  sudo apt autopurge -y

  echo -e "\nThe system has been successfully updated and cleaned."
else
  echo -e "\nThis system doesn't use apt or dpkg. The script cannot be executed here."
fi
