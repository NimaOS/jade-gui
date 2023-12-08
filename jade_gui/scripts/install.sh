#!/usr/bin/bash
echo "Thanks for choosing NimaOS, Installing..."
echo "Running reflector to sort for fastest mirrors" | tee -a /tmp/jade-gui-output.txt
pkexec reflector --latest 5 --sort rate --save /etc/pacman.d/mirrorlist | tee -a /tmp/jade-gui-output.txt
pkexec nimaos-inst config ~/.config/jade.json | tee -a /tmp/jade-gui-output.txt
