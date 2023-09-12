FROM tomcat:9.0-jdk11-temurin

ENV TZ=Europe/Stockholm

RUN mkdir -p /data/regions/config

COPY sbdi/data/config/menu-config.json /data/regions/config/menu-config.json
COPY sbdi/data/config/state-emblems.json /data/regions/config/state-emblems.json

COPY build/libs/regions-*-plain.war $CATALINA_HOME/webapps/ROOT.war
