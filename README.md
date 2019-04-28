# Bind9 container
Runs a bind9 DNS server in a container, using an external volume for database storage.  
This container is written with clustering in mind, for high availability. 

## Install
*This container is not published to docker hub yet*

```
git clone https://github.com/drew9781/docker-bind
cd docker-bind
docker build -t dns .
```

## Usage

```
docker run --rm --name dns -d -p 53:53/tcp -p 53:53/udp -v /your/existing/bind/directory/bind:/etc/bind dns
```