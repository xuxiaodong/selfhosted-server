#!/usr/bin/env bash

set -e

echo
echo -e "\033[38;5;255m\033[48;5;234m\033[1m  S E L F H O S T E D - S E R V E R  \033[0m"
echo

echo -n "Which provider are you using?
  1. DigitalOcean
  2. Linode
  3. Vultr
Your choose (number): "

read reply

case "$reply" in
  1) ansible-playbook site-do.yml;;
  2) ansible-playbook site-linode.yml;;
  3) ansible-playbook site-vultr.yml;;
  *) echo "Invalid provider selected."; exit 1;;
esac
