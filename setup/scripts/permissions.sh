#!/usr/bin/env bash
source $(dirname "$0")/colors.sh

echo -e $RED_COLOR"Adjusting db permissions..."$RESET_COLOR
sudo chmod -R g+w ./setup/db
sudo chmod g+w ./setup/db
sudo chmod -R 770 ./setup/db

echo -e $RED_COLOR"Adjusting wp permissions..."$RESET_COLOR
sudo chmod -R g+w ./setup/wp
sudo chmod g+w ./setup/wp
sudo chmod -R 774 ./setup/wp