## Kubernetes Local Install
* http://play-with-k8s.com
* katacoda.com
### minikube
```bash
minikube-installer.exe
minikube start
```
### microk8s

``` bash
microk8s.kubectl
microk8s.enable dns
alias kubectl=microk8s.kubectl
kubectl version --output=yaml
```
### Three ways to create pods
Lots of ways to do the same things
Knowing what to do
```bash

kubectl run # single pod per command since 1.18
kubectl create # Create some resources via CLI or YAML
kubectl apply # creates/update anything via YAML
```

### First pod
```bash
kubectl version 
kubectl version --short 
kubectl run my-nginx --image nginx 
kubectl get pods 
kubectl get all
```

### With Create
```bash
kubectl create deployment my-nginx --image nginx 
kubectl get pods kubectl get all 
kubectl delete pod my-nginx 
kubectl delete deployment my-nginx
```

### Scaling replicas
```bash
kubectl create deployment my-nginx
kubectl create deployment my-apache --image httpd 
kubectl get all 
kubectl scale deploy/my-apache --replicas 2 
kubectl get all
```


## Kubectl run, create and  apply

```bash
kubectl run
kubectl create
kubectl apply
```

## Our First Pod With Kubectl run
```bash

kubectl version

kubectl run my-nginx --image nginx

kubectl get pods

kubectl get all

kubectl delete deployment my-nginx

kubectl get all
```

## Scaling ReplicaSets

```bash
kubectl run my-apache --image httpd
# or
kubectl create deployment my-apache --image httpd
kubectl create deployment my-apache --image httpd --replicas 2
kubectl get all

# deploy = deployment = deployments
kubectl scale deploy/my-apache --replicas 2
kubectl scale deploy my-apache --replicas 2
kubectl scale deployment my-apache --replicas 2
kubectl scale deployment my-apache --replicas 2

kubectl get all
```

## Inspecting Kubernetes Objects

```bash
kubectl get pods

kubectl logs deployment/my-apache
kubectl logs deployment/my-apache -o wide | yaml | json

kubectl logs deployment/my-apache --follow --tail 1

kubectl logs -l run=my-apache

kubectl get pods

kubectl describe pod/my-apache-<pod id>
kubectl describe deploy my-apache
kubectl describe node docker-desktop
kubectl get pods -w

kubectl delete pod/my-apache-<pod id>

kubectl get pods

kubectl delete deployment my-apache

```
## Watch resources

```bash
kubectl get pods -w
# In another terminal
kubectl delete pod <pod-id>
kubectl get events --watch-only
kubectl get events

```

## Logging
```bash
kubectl logs deploy/my-apache
kubectl logs deploy/my-apache --follow --tail 1
kubectl logs pod/my-apache-55878d86f4-p4nrr --follow --tail 1
kubectl logs pod/my-apache-55878d86f4-p4nrr -c httpd --follow --tail 1
kubectl logs pod/my-apache-55878d86f4-p4nrr --all-containers httpd --follow --tail 1
p4nrr --all-containers=true httpd --follow --tail 1
kubectl describe -l app=myapache
kubectl logs -l app=myapache
stern my-apache
```

## Exposing Kubernetes Ports

### Service Types

```bash
kubectl expose
```

## Creating a ClusterIP Service
```bash
kubectl get pods -w

kubectl create deployment httpenv --image=bretfisher/httpenv

kubectl scale deployment/httpenv --replicas=5

kubectl expose deployment/httpenv --port 8888

kubectl get service
kubectl run tmp-shell --rm -it --image bretfisher/netshoot -- bash
kubectl run --generator run-pod/v1 tmp-shell --rm -it --image bretfisher/netshoot -- bash

curl httpenv:8888

curl [ip of service]:8888

kubectl get service
```
## Creating a NodePort and LoadBalancer Service
```bash

kubectl get all

kubectl expose deployment/httpenv --port 8888 --name httpenv-np --type NodePort

kubectl get services

curl localhost:32334

kubectl expose deployment/httpenv --port 8888 --name httpenv-lb --type LoadBalancer

kubectl get services

curl localhost:8888

kubectl delete service/httpenv service/httpenv-np

kubectl delete service/httpenv-lb deployment/httpenv
```

##  Services DNS
```bash
curl <hostname>
kubectl get namespaces
# use FQDN Full qualified Domain Name
curl <hostname>.<namespace>.svc.cluster.local
```

## Management techniques

### Run, Expose and Create Generators

```bash

kubectl create deployment sample --image nginx --dry-run -o yaml

kubectl create deployment test --image nginx --dry-run

kubectl create deployment test --image nginx --dry-run -o yaml

kubectl create job test --image nginx -dry-run -o yaml

kubectl expose deployment/test --port 80 --dry-run -o -yaml

kubectl create deployment test --image nginx

kubectl expose deployment/test --port 80 --dry-run -o -yaml

kubectl delete deployment test
```

## The Future of Kubectl Run
```bash
kubectl run test --image nginx --dry-run

kubectl run test --image nginx --port 80 --expose --dry-run

kubectl run test --image nginx --restart OnFailure --dry-run

kubectl run test --image nginx --restart Never --dry-run

kubectl run test --image nginx --scheduled "*/1 * * * *" --dry-run
```
## Imperative vs. Declarative

```bash
kubectl apply -f my-resources.yaml

kubectl run
```
## Imperative
### Commands
Best for dev/learning/personal projects
```bash
run
expose
scale
edit
create deployment
```
### Objects
good for prod of small environments, single file per command
forces to use yaml - explicit verb to do by using illustrative task
```bash
create -f file.yaml
replace -f file.yaml
delete -f file.yaml
```
## Declarative commands
besst for prod, easier to automate, harder to understand and predict changes
```bash
kubectl apply -f my-resources.yaml
kubectl apply -f directory
kubectl apply -f <directory> --prune
kubectl delete -f f.yaml
```


## Moving to Declarative Kubernetes YAML

### Kubectl Apply
```bash
kubectl apply -f filename.yml

kubectl apply -f myfile.yaml

kubectl apply -f myyaml/

kubectl apply -f https://bret.run/pod.yml

curl -L https://bret.run/pod

start https://bret.run/pod.yml

```
### Building Your YAML Files
```bash
kubectl api-resources

kubectl api-versions
# Lists all YAML specification that can be used
kubectl explain services --recursive
# Subkeys of the spec
kubectl explain services.spec
kubectl explain services.spec.type
# subspecs
kubectl explain deployment.spec.template.spec.volumes.nfs.server

```
### Dry Runs and Diffs
```bash
kubectl apply -f app.yml --dry-run=client
kubectl apply -f app.yml --dry-run=server

kubectl apply -f app.yml --dry-run=server

kubectl diff -f app.yml
```

### Labels and Label Selectors
Labels are like tags
Annotations, are made to config cata , configuration , not describing
```bash
kubectl get pods -l app=nginx

kubectl apply -f myfile.yaml -l app=nginx

kubectl get all

kubectl delete <resource type>/<resource name>

```


## Your Next Steps, and The Future of Kubernetes

### Kubernetes Dashboard

https://github.com/kubernetes/dashboard

### Namespaces and Context
```bash
kubectl get namespaces
kubectl get all -all-namespaces
#See this file to dump it and 
~/.kube/config file

		kubectl config get-contexts

kubectl config set*
```









