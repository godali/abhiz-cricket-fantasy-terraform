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
