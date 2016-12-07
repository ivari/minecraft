#!/bin/bash          

_now=$(date +"%m.%d.%Y %H:%M:%S")
echo "Minecraft was started at $_now" >> minecraft_crashes.log

java -Xms8192M -Xmx15000M -d64 -jar spigot-1.11.jar
