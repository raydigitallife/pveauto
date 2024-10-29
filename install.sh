#!/bin/bash

apt update
apt install git zsh htop bmon iperf3 vim lshw net-tools lm-sensors sysstat ethtool nfs-kernel-server samba -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
apt dist-upgrade -y && apt full-upgrade -y
apt autoclean && apt autoremove -y
