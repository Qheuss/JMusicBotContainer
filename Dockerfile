FROM openjdk:11-jre-slim

ENV JMB_VERSION 0.4.3

RUN mkdir -p /jmb/config
# ADD https://github.com/jagrosh/MusicBot/releases/download/$JMB_VERSION/JMusicBot-$JMB_VERSION.jar /jmb/JMusicBot.jar
ADD https://github.com/OMGhixD-OG/MusicBot-1/releases/download/0.4.3/JMusicBot-0.4.3-yt-oauth2.jar /jmb/JMusicBot.jar
ADD https://github.com/jagrosh/MusicBot/releases/download/0.2.9/config.txt /jmb/config/config.txt

COPY ./docker-entrypoint.sh /jmb

RUN chmod +x /jmb/docker-entrypoint.sh

VOLUME /jmb/config

ENTRYPOINT ["/jmb/docker-entrypoint.sh"]
