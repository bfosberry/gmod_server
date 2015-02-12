# Gmod Server
#
# VERSION 0.1

FROM bfosberry/steam_base
MAINTAINER bfosberry

ADD ./scripts /opt/server/scripts

RUN $STEAMDIR/steamcmd.sh +runscript /opt/server/scripts/update_script
RUN cp $SERVERDIR/bin/*.so $HOME/.steam/sdk32/; true

RUN mkdir /opt/server/cfg

ADD ./confd /opt/server/confd
RUN sudo chown -R appuser:appuser /opt/

WORKDIR /opt/server
#define ports
EXPOSE 26901/udp
EXPOSE 27005/udp
EXPOSE 27015
EXPOSE 27015/udp
EXPOSE 27020/udp
