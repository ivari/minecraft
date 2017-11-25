#!/bin/bash          

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git tar openjdk-8-jdk

git pull
git checkout

mkdir build
mkdir server

cd build
git config --global --unset core.autocrlf
java -jar BuildTools.jar --rev 1.12.1
cd ..

cp build/spigot-1.12.1.jar server/