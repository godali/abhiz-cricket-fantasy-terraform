# Steps to set it up again from scratch

Pre-requisits
-- Gcloud sdk and terraform setup done


* Used guide given here: https://dzone.com/articles/build-a-kubernetes-cluster-on-gcp-with-terraform
* Create a service account in GCP and download private key as json file.
* terrafrom init -- initalizes terraform
* terraform plan -- plans and displays what it will Create
* terraform apply -- creates everything

* After creation is done, it outputs required Variables
* This sets up kubernetes cluster and you can use gcloud

* `gcloud container clusters get-credentials abhizcricketfantasy --zone us-east1-b --project abhiz-cricket-fantasy`
* `kubectl proxy` and then access k8s dashboard using http://localhost:8001/ui

* After you are done use `terraform destroy`

* Master has only controller-managers, scheduler and etcd hosted.  All the pods are in worker nodes
* The controller-manager is responsible for running various controllers that regulate behavior in the cluster: for example, ensuring that all of the replicas of a service are available and healthy. The scheduler is responsible for placing different pods onto different nodes in the cluster. Finally, the etcd server is the storage for the cluster where all of the API objects are stored.
* `kubectl get nodes` get all nodes in the cluster
* `kubectl get componentstatuses` gets status of components
* `kubectl describe nodes $nodename` gives node information

## Cluster Components
* All run in kube-system namespace
* *Kubernetes Proxy* - responsible for routing traffic to load balanced services. runs on every node of the cluster
* *Kubernetes DNS* -  provides naming and discovery for the services that are defined in the cluster
* *Kubernetes UI* - Dashboard for kubernetes cluster

## Kubectl commands
* By default kubectl always interacts with default namespace. you can use `--namespace=mystuff`
* To change it for all commands by default use context.  Context file is located in `$HOME/.kube/config`.  
* kubectl makes REST API calls.  To get specific resource you can always do `kubectl get <resource-name>`
* kubectl command can give more information. By default it is configured to give out little details.  With using -o flag it can give more.  You can also take a particular info using jsonpath expression.  
* `kubectl apply obj.yml` creates the resource as defined in yaml file.
* Update the labels and annotations on any Kubernetes object using the annotate and label commands.
* `kubectl logs <pod-name>` View logs of kube pods
* `kubectl exec -it <pod-name> -- bash` - Get into running container in the pod
*
