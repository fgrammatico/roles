#!/bin/bash

set -e

echo"Install necessary packages"

apt update &&
apt install -y python3-venv python3-pip pipx git &&

echo"Install Ansible using pipx"
pipx install --include-deps ansible &&

echo"Create necessary directories"
mkdir /etc/ansible/ &&
mkdir /etc/ansible/hosts &&

echo"Clone the roles repository"
git clone https://github.com/NyanCod3r/roles.git /etc/ansible &&

## alllow user fg to modify the /etc/ansible/hosts directory
chown -R fg /etc/ansible/