FROM alpine
MAINTAINER Alberto Guimaraes Viana <albertogviana@gmail.com>

RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

EXPOSE 8080
CMD ["docker-webserver"]

COPY docker-webserver /usr/local/bin/docker-webserver
RUN chmod +x /usr/local/bin/docker-webserver
