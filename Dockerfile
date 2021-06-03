FROM busybox:latest

RUN cd / && wget https://raw.githubusercontent.com/searx/searx-docker/master/rules.json


FROM dalf/filtron:latest

WORKDIR /etc/filtron/

RUN mv /rules.json /etc/filtron/