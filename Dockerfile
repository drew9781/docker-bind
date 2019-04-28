FROM ubuntu:18.04

#MAINTAINER drew9781 <drew9781@yahoo.com>

RUN apt update && apt install -y bind9 dnsutils && apt clean && rm -r /etc/bind

EXPOSE 53/udp 53/tcp
ADD bind /etc/bind
ADD start.sh /root
RUN chmod 755 /root/start.sh

#ENTRYPOINT [ "/root/start.sh" ]
CMD ["/usr/sbin/named", "-f"]