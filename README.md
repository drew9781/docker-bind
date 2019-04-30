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
You need to mount the bind directory via a volume in order for this to work.  
Because this container is meant to be clustered, it is built to work off a central DB. Think NFS via NAS.

```
docker run --rm --name dns -d -p 53:53/tcp -p 53:53/udp -v /your/existing/bind/directory/bind:/etc/bind dns
```
If you don't have an existing bind configuration, use the included default configuration to configure one for yourself.  
Here is a handy guide on configuring bind by [Digital Ocean.](https://www.digitalocean.com/community/tutorials/how-to-configure-bind-as-a-private-network-dns-server-on-ubuntu-18-04)  
Make sure to rename your bind configuration directory to "bind" so that it will not be included. (.gitignore)

# To-Do
