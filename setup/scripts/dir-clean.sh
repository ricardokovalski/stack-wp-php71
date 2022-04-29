#!/usr/bin/env bash
source $(dirname "$0")/colors.sh

echo -e $RED_COLOR"Cleaning db dir..."$RESET_COLOR
sudo rm -rf ./setup/db/

echo -e $RED_COLOR"Cleaning wp dir..."$RESET_COLOR
sudo rm -rf ./setup/wp/