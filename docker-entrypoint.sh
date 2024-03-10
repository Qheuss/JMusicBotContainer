#!/bin/sh

echo "Starting Jagrosh/JMusicBot Container by Qheuss https://github.com/Qheuss/JMusicBotContainer"
echo "Version: $JMB_VERSION"

cd /jmb/config
java -jar -Dnogui=true /jmb/JMusicBot.jar

echo "Seems like java stoped... Waiting for 30 seconds before termination..."
sleep 30s
echo "Terminating!"