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
  4. Google Compute Engine
Your choose (number): "

read reply

case "$reply" in
  1) ansible-playbook site-do.yml;;
  2) ansible-playbook site-linode.yml;;
  3) ansible-playbook site-vultr.yml;;
  4) ansible-playbook site-gce.yml;;
  *) echo "Invalid provider selected"; exit 1;;
esac
