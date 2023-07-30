* Bridge
* Host
* None

```bash
docker network ls
# run ip add show or ifconfig on the docker host
ip add show
ipconfig
```

* Unless specified,  the containers connect to docker0 network once spun
* The bridge network represents docker0 network on the host
___
Containers are run on a separate network stack, internal to the Docker host.
Share the external ip address of the host through the use of NAT
* Uses DHCP for automatic address asignment

 ![[./Resources/Pasted image 20230730175013.png]]
Docker automatically creates a masquerade rule, for each container that lets containers connect to external network.
```bash
docker network inspect bridge
docker run -itd --name=nginx1 -p 80 nginx
```

## Port mapping
Is assigned by running -p command internally
```bash
docker run -itd --rm --name nginx3 -p 32000:80 nginx
docker run -itd --rm --name tompcat1 -p 40000:8080 tomcat 

```