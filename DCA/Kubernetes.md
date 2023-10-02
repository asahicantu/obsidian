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

## Components
![[Pasted image 20230919185958.png]]
### Master 
#### Kube-Controller-manager

Runs multiple controllers compiled in a single binary
##### Node controller
Notice and responce when a node is down
##### Replication controller
Maintains the correct number of nodes for any replication system in the cluster
##### Endpoint controller
populate endpoints object
##### Service account 
Creates default service accts and api access tokens for new  namespaces
#### Kube-apiserver
exposes k8s api - Frontend REST operations - Kubectl
#### Etcd
Stores config data distributed consistent key-value store
#### kube-scheduler
Master component, watches newly created pods that are not assigned
![[Pasted image 20230919185648.png|400]]

### Worker
#### Container runtime
responsible of running containers  Docker, CRIO, ETC (docker engine)
#### Kubelet
Runs on each node in the cluster, makes sure containers are running in the pod, ensures health and reports back to the API sever its changes

#### Kube-proxy
Network proxy, maintains network rules in the node
Implements k8s services
![[Pasted image 20230919185801.png|500]]
## Objects
Persisten entities expressed in YAML format
Declarative state of the cluster (Desired state)
Describes
	Containerized applications
	Resources made available
	Policies for these apps

#### Object SPEC
how i want the object to be
#### Object status
property
![[Pasted image 20230919190202.png]]
### POd
Encapsulate single or multiple containers Contains:
* Init containers 
* application containers
Storage resources
	Shared storage volumes
	Allow persistent data
Unique newtork IP
	Containers shared the network Namespace
Options governing how the containers should run
Ephimeral and disposable entities
<span style="background:#d3f8b6">K8s uses controlles to impkement its scaling and healing </span>
`kubectl apply -f test.yaml`
![[Pasted image 20230919190445.png]]

#### Phases
Pending -Accepted by cluster, waiting
Running - Running, starting or restarrting
Succeeded
Failed
Unknown
![[Pasted image 20230919190728.png]]
By default all deletes are graceful for 30 secs.
`--grace-period`
force deletion is available

### Namespaces
`kubectl get namespaces | ns`
`kubectl describe pod`
`kubectl create namespace <name>`
`kubectl run nginx --image=nginx --namespace=<name>`
`kubeclt config set-context --current --namespace <ns>`
`kubectl get pods --all-namespaces'
`kubectl get pods -n <ns name>`
* default  - objects with no specified ns
* kube-system - objects created by the k8s sysem
* kube-public - reserved for cluster usage
* kube-node-lease - contains lease objects
![[Pasted image 20230919190926.png]]
*
### Names [253 chars long]
Is unique for a type of resource within a Namespace
Two different namespaces can have a pod with the same name
UID is unique accross the whole user 

### Labels (63 chars)
Formulate system objexts
Key-value pairs attached to objects
Key must be unique

`kubectl describe pod <> | Labels`

### Selectors
#### Equality-based selectors
Identify a set of objects
Equality based selectors
Operators (= == and !=)

#### Set-Based selectors
(in notin exists)
`environment in (production,qa`)

### Annotations
Attach arbitrarty metadata objectts
Not used to identify objects

### Replicasets
Manage replica coordination of the pods
### Deployments
Describe desired state of component
innovlve one or more replicaset
Automatic propagation
#### Automatic updating - update template of the pod
`kubectl get deployment`
`kubectl describe deployment`
`kubectl set image deployment/nginx
#### Rollingback
#### Scaling
`kubectl scale --replicas=2 deployment app:tomcat`

### Networking
Every pod gets its own ip address
Pods on a host can communicate with all pods on all host without NAT
agents on a host can communicate with all pods on a host
pods in the same namespace see same ips

#### Highly coupled container-to-container communications
Share same network namespaces
must coordinate port usage
#### Pod-to-pod ocmmunication
can communicate without procies

#### Pod-To-Service
Kube-proxy
![[Pasted image 20230919193030.png]]
#### Extewrnal-to-internal comms.
##### Nodeport

##### LoadBalancer
##### ExternalName


### Network models
#### Calico
Scalabe networking and network policu solution got bnoyh linux and win
Assigns ip addresses, programs routing table and distribute routes
Supports using th eborder gatweay protoocol (BGP) for sharing routing info

#### Flannel
Simple overlay network created by coreOS
Routes pod traffic using static per node CIDRs
Pods will be assigned one ip address in the overlay network

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
![[Pasted image 20230919193435.png]]
* ###### ClusterIP (default) - Good in the cluster
	* Is only available in the cluster (nodes and pods)
	* Pods can reach service on apps port number
	* Single Internal virtual ip allocated
* ###### NodePort #nodeport
	* high port allocated on each node
	* Port is open on every nodes'IP
	* Anyone can connect (if they can reach the node)
	* Other pods need to be updated on this port
	* Creates a ClusterIP
* ###### LoadBalancer
	* Control LB endpoint external to the cluster
	* Only available when infra provider gibes you LB (AWS ELB, Azure, etc)
	* Create NodePort + ClusterIP services, tells LB to send to NodePort
* ###### ExternalName
	* Add CNAME DNS record to coreDNS only
	* Not used for Pods, but for gibing pods a DNS name to use for something outside Kubernetes
* Kubernetes Ingress
	* Http traffic related
* CoreDNS - Resolves services by name
	* Required by any k8s service
	* #### 

#### Services
##### Multi-port-services

Exposes more than one port per pod 

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