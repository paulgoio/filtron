FROM busybox:latest

RUN cd / && wget https://raw.githubusercontent.com/searx/searx-docker/master/rules.json

FROM dalf/filtron:latest

COPY mkdir -p /etc/filtron/ && mv /rules.json /etc/filtron/