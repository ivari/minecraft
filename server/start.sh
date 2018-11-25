#!/bin/sh

# screen -m
java -Xms10G -Xmx100G -XX:+UseConcMarkSweepGC -jar spigot.jar
