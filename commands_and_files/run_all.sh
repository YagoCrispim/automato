#!/bin/bash

./commands_and_files/nvm.sh
./commands_and_files/install_debs.sh && sudo apt install -f
./commands_and_files/restore_all.sh
./commands_and_files/ohmyzsh.sh
