FROM ubuntu:18.04

LABEL maintainer="drew9781@yahoo.com"

RUN apt update && apt install -y bind9 dnsutils && apt clean && rm -r /etc/bind
RUN mkdir /var/log/bind

EXPOSE 53/udp 53/tcp

CMD ["/usr/sbin/named", "-f"]
