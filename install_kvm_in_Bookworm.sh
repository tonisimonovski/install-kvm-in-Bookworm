#!/usr/bin/env bash

# Add the user account to the sudoer's group. 
sudo adduser "$(whoami)" sudo

# Update package lists. 
sudo apt update

# For Debian bookworm+ on Intel / AMD you need to install: 
sudo apt install --no-install-recommends qemu-kvm qemu-system-x86 libvirt-daemon-system libvirt-clients virt-manager gir1.2-spiceclientgtk-3.0 dnsmasq qemu-utils iptables -y

# Addgroup
# In order to be able to manage virtual machines as a regular (non-root) user, that user must be added to the libvirt and the kvm groups. 
sudo adduser "$(whoami)" libvirt
sudo adduser "$(whoami)" kvm

# Network Start
sudo virsh -c qemu:///system net-autostart default
sudo virsh -c qemu:///system net-start default

# 


 ########################################################
 # End of script
 # Dont forget to
 # chmod +x ./<name_of_script>.sh
 # 

 sudo apt autoremove

 printf "\e[1;32mYou are finished with install! Thanks you.\e[0m\n"
