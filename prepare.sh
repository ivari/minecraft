#!/bin/bash          

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git tar openjdk-8-jdk

git pull
git checkout

mkdir build
mkdir server

cd build
wget -O BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
git config --global --unset core.autocrlf
java -jar BuildTools.jar --rev 1.11
cd ..

cp build/spigot-1.11.jar server/