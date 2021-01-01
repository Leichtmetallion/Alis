#!/usr/bin/env bash
set -e

# Arch Linux Install Script (alis) installs unattended, automated
# and customized Arch Linux system.
# Copyright (C) 2020 picodotdev

GITHUB_USER="leichtmetallion"

while getopts "u:" arg; do
  case ${arg} in
    u)
      GITHUB_USER=${OPTARG}
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      exit 1
      ;;
  esac
done

rm -f alis.conf
rm -f alis.sh


curl -O https://raw.githubusercontent.com/$GITHUB_USER/alis/master/alis.conf
curl -O https://raw.githubusercontent.com/$GITHUB_USER/alis/master/alis.sh


chmod +x alis.sh
