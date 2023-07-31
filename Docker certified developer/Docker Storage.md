* Local storage for containers
	* Provided for the docker image run
	* Uses 'Storage Drivers' to read the filesystem layers from a container
* Persistent Data Storage
	* Saving data beyond the container lifecycle
	* Data is stored outside the container boundaries
* StaticImage Storage
	* Storing images in registry
	* Images are not running

There are multiple storage drivers in Docker
Copy-on-write (CoW) is a strategy of sharing and copying filed for maximum efficiency

![DockerStorage](./Resources/DockerStorage.png)
Size: Data on the writable layer
Virtual size: read-only image data + writable layer size
Total disk space used by all of the running containers on disk is some combinations of each container's size and the overall virtual size values

```bash
docker ps -s
docker ps -s --format 'table{{.Names}}\t{{.Image}}\t{{.Size}}'
# show docker disk usage
docker system df
#verbosity
docker system df -v
docker info | grep "Storage Driver"
```

___
## Storage drivers
* Overlay2 - Preferred storage driver
* Aufs
* Devicemapper
* Btrfs & zfs
* Vfs
### To change storage driver:
* Export data
* Stop docker
* Edit (or create new) /etc/docker/daemon.json
* Start docker
* Check Docker Info
* Import data
```bash
systemctl stop docker
cd /etc/docker
vi daemon.json
```

___
daemon.json
```json
{
	"storage-driver" : "devicemapper"
}
```



```bash
systemctl start docker
systemctl status docker
```

### Change storage driver using dockerd
```bash
systemctl stop docker
cd /etc/docker/
rm daemon.json
dockerd --storage-driver devicemapper
```

## Persistent storage
* Downside of storing data within the writable layer of container
	* Data does not persist when conainer is removed
	* Writable layer is tightly couplet to the host machine
	* Performance impact for write-heavy workloads

* Volumes provide persistent storage
* Allow to share data among containers
* Can be managed using Docker CLI commands or the Docker API
* Volume does not increase the size of the containers using it

Docker volume plug-in allow you to provision and mount shared storage such as iSCSI, NFS, FC
Data is translated by Volume Driver plug-in, which is then accessed by the Containers
![DockerPersistentStorage](./Resources/DockerPersistentStorage.png)

## Manage application data
* Volumes 
	* Stored in th Docker Managed filesystem of the host
	* Supports the use of Volume Drivers
* Bind mounts
	* Stored anywhere on the host system
* tmpfs mounts
	* Stored in the host system;s memory 
![DockerManagedData](./Resources/DockerManagedData.png)

