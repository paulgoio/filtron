FROM busybox:latest as builder

RUN cd / && wget https://raw.githubusercontent.com/searx/searx-docker/master/rules.json

FROM dalf/filtron:latest

WORKDIR /etc/filtron/

COPY --from=builder /rules.json .
