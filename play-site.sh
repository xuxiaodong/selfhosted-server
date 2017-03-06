#!/usr/bin/env bash

set -e

echo -e "
┏━┓┏━╸╻  ┏━╸╻ ╻┏━┓┏━┓╺┳╸┏━╸╺┳┓   ┏━┓┏━╸┏━┓╻ ╻┏━╸┏━┓
┗━┓┣╸ ┃  ┣╸ ┣━┫┃ ┃┗━┓ ┃ ┣╸  ┃┃   ┗━┓┣╸ ┣┳┛┃┏┛┣╸ ┣┳┛
┗━┛┗━╸┗━╸╹  ╹ ╹┗━┛┗━┛ ╹ ┗━╸╺┻┛   ┗━┛┗━╸╹┗╸┗┛ ┗━╸╹┗╸
"
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
  *) echo "Invalid provider selected"; exit 1;;
esac
