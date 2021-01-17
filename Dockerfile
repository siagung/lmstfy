FROM golang:1.15.6

WORKDIR /lmstfy
ADD ./ /lmstfy
RUN cd /lmstfy && make
EXPOSE 7777:7777
ENTRYPOINT ["/lmstfy/_build/lmstfy-server", "-c", "/lmstfy/config/demo-conf.toml"]

