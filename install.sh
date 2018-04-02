#!/bin/bash -e

# ukuu
add-apt-repository -y ppa:teejee2008/ppa

apt update && apt upgrade && apt install -y git i3 keepassx feh i3blocks compton htop pydf mtr ncdu autojump ukuu ranger


