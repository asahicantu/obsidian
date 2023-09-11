Runs on top of docker  - set of APIs in containers (Containerd)
API/CLI to manage similar to Docker Swarm

- Kubernetes: Orchestation system
	- K8s
	- Kubectl
	- Node: SOngle server in kuberentes cluster
	- Kubelet Kubernetes agent running on nodes
	- Contorl plane: Set of containers that manage the cluster
	- Includes API server, scheduler, controller manager, etc.
## Documentation
<iframe  width="700" height="400" src="https://kubernetes.io/docs/concepts/overview">
</iframe>

## Install and First Pods

## Architecture

### Storage
StatefulSets new resource type that makes Pods stickier
Two ways to create storage
#### Volumes
- Tied to lifecycle of a pod
- All containers in a single pod can share them
#### PersistentVolumes
- Created at the cluster level
- outlices a pod
- Separates storage config from pod using it
- Mutliple pods can share them
- CSI[^1] plugins are new way to connect to storage
	- Container Storage Interface
### Ingress
None of service types work at osi layer 7 (http)
Route outside connections based on hostname or url
Ingress controllers (optional) enables this with 3rd party proxies
#### Proxy vendors
* Nginx
* Traefik
* HAProxy
* F5
* Envoy
* Istio

### CRD's
Third party resources
Extensions for API and CLI
Operator: Automate deployment and management of complex apps
Databases, monitoring tools, backups and custom ingresses

### Helm
Most popular deployment abstraction
Deployment abstraction
Charts concept
Compose on Kubernetes
Helm and charts are optional
Most distros support Helm

Templating YAML

##### Kustomize 
feature to work out of the box
`docker app command`
CNAB standard
### Dashboard
Default guio for "upstream" Kubernetes
Rancher, Docker Ent

### Namespaces
Limit scope of pods and resources
Not related to Docker/Linux namespaces
Wont need them in small clusters
Virtual clusters
```bash
kubectl get namespaces
kubectl get all --all-namespaces
```


### Future of K8s

- It will start getting boring, will start relying on things built on top of that
- More focus on Stability and security
- Helm 3.0
* More declarative-style features
* Better windows server support
* More edge cases, kubeadm HA clusters
### Related projects
- Differencing and scheduling engine backbone for so many new projects
- KNative Serverless workloads on kubernetes
- k3s mini simple kubes
- k3os minimal linux os for k3s
- service mesh - New layer in distributed app traffic for better control, security and monitoring
## Other
### Node
Single element in the server
### Master nodes
Needs master nodes - control plane
Each master runs multiple containers
#### Control systems
	etcd
	API
	scheduler
		Control how and where containers will be placed called PODS
	Controller manager 
		State of the whole cluster - Takes all the order specs
	CoreDNS
	
### Worker nodes
![[KubesArchitecture.excalidraw|600]]
![[KubernetesDeployment.png]]
Each new deployment a replicaSet is created
* api
	* received deployment instruction
* etcd
* scheduler
* c-m (controlle-manager) 
	* Creates replicaSet
		* RollingUpdates most commonly set
	* Pod
## Kubernetes deployments
* Deployment-> Control Plane -> ReplicaSet -> Pod

#### Nodes
	Kubelet
	Kube-proxy
## Container abstraction
#### POD
#pod is single unit
Resource object that controls individual containers in a node
Basic unit of Deployment. Containers are always in pods
#### Controller 
Creating/updatying pods and other opbjhects. MAny tipes of controller,s deployment, repollicaset, statefulset, deamonsety, job, cronjob, etc
#### Service
Is an endpoint that is consistent so other elements in pods can connect to
Network endpoint to connect to a pod
Persistent endpoint. It instructs a pod how to connect to specific network reources
**If we want to connect a Pod, we need a service**
##### Exposing pods
* `kubectl expose` creates a service for existing pods
* A service is a stable address for pods
* If we want to connect to pod we need a [[#Service]]

##### service types
* ClusterIP (default) - Good in the cluster
	* Is only available in the cluster (nodes and pods)
	* Pods can reach service on apps port number
	* Single Internal virtual ip allocated
* NodePort #nodeport
	* high port allocated on each node
	* Port is open on every nodes'IP
	* Anyone can connect (if they can reach the node)
	* Other pods need to be updated on this port
	* Creates a ClusterIP
* LoadBalancer
	* Control LB endpoint external to the cluster
	* Only available when infra provider gibes you LB (AWS ELB, Azure, etc)
	* Create NodePort + ClusterIP services, tells LB to send to NodePort
* ExternalName
	* Add CNAME DNS record to coreDNS only
	* Not used for Pods, but for gibing pods a DNS name to use for something outside Kubernetes
* Kubernetes Ingress
	* Http traffic related
* CoreDNS - Resolves services by name
	* Required by any k8s service
#### Namespace
Filtered group opf objects in the cluster
Way to filter the kube when running in CLI

#### DNS
Internal DNS is provided by CoreDNS
Is DNS-Based service Discovery
It works with `kubectl get namespaces`

#### Others
Secrets. configmaps, etc

### Architecture
LoadBalancer -> NodePort -> ClusterIP


## Kubernetes object management
* Imperative commands
* Imperative object-configuration
* Declarative object configuration

## Resource generators
helper templates, evey k8s has a spcecification (spec)

[^1]: Container Storage Interface
[^note]: Named footnote

^[Inline footnote]


## Commands

![[DCA/Resources/Commands/Kubernetes]]



![[References]]