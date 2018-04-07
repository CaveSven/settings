#!/bin/bash -e

# ukuu
add-apt-repository -y ppa:teejee2008/ppa

apt update && apt upgrade && apt install -y cmake git i3 keepassx feh i3blocks compton htop pydf mtr ncdu autojump ukuu ranger

# ripgrep
snap install rg

# miniconda
curl -o /tmp/miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && chmod +x /tmp/miniconda.sh && /tmp/miniconda.sh -y
