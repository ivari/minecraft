#!/bin/bash

# Refresh server state
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git tar openjdk-11-jdk

# Refresh repository state
git pull
git checkout
git reset --hard HEAD

# Build spigot
cd build
git config --global --unset core.autocrlf
java -jar BuildTools.jar --rev 1.13.2
cd ..

# Copy built server to location
mkdir server
cp build/spigot-1.13.2.jar server/spigot.jar
cd server
