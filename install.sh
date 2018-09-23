#!/bin/bash -e

# ukuu
add-apt-repository -y ppa:teejee2008/ppa

# icons
add-apt-repository -y ppa:moka/daily

apt update && apt upgrade && apt install -y vim cmake git i3 keepassx feh i3blocks compton htop pydf mtr ncdu autojump ukuu ranger apt-transport-https ca-certificates curl software-properties-common atool fonts-font-awesome rofi thunar pavucontrol lxappearance arc-theme moka-icon-theme faba-icon-theme faba-mono-icons arandr openconnect network-manager-openconnect network-manager-openconnect-gnome network-manager-openvpn-gnome duplicity python-gi dconf-cli ffmpeg xbacklight grub2 tree gsimplecal nmap ufw emacs

# ripgrep
snap install rg

# miniconda
curl -o /tmp/miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && chmod +x /tmp/miniconda.sh && /tmp/miniconda.sh -y -u

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update && apt install -y docker-ce

# tldr
npm install -g tldr

# spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
