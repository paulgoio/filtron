FROM dalf/filtron:latest

WORKDIR /etc/filtron/

COPY src/rules.json .
