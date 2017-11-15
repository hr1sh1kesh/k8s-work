# Fluentd podspecs. 

These fluentd podspecs are used in a kubernetes cluster which uses Portworx as the Software defined storage solution. Portworx allows you to manage your application data in a Cloud native manner. 

The elasticsearch client pods are secured by the ReadOnlyRest plugin. Elasticsearch authenticates users via an LDAP service. The 

## Pre-requisites
- An IAM user with `AWS Access Key ID` and `secret Key id`.
- An `s3 bucket` with access to the IAM user to publish logs to this bucket. (There is a sample `s3-bucket-policy` in this repo which could be used)
- A running Elasticsearch cluster.
- A running Kibana service to visualize the logs.
- An OpenLDAP instance with `groups` and `users` which are used to authenticate against the Elasticsearch cluster. 
- An LDAP user for fluentd to publish logs to the ES cluster. 

## Usage
- The Elasticsearch cluster is setup with 3 components. 
    - 3 elasticsearch data pods.
    - 3 elasticsearch master pods. 
    - 2 elasticsearch client pods.
- The client pods only allow authenticated users to push their logs to the cluster. 
    This is achieved in the current setup by using ReadOnlyRest plugin and setting up an OpenLDAP server as part of the k8s cluster. 
- Fluentd publishes the logs to the ES cluster via the user/password provided earlier to be used. 
- The setup uses 2 targets, 
    - Publishes logs to an S3 bucket.
    - Publishes logs to the ES cluster.
- The fluentd deamonset uses an init container within the Pod which extracts the unique clusterID of the Portworx cluster. This is used as the prefix for the folder name in the S3 bucket as well as the unique index for elastic search. 
- The fluentd deamonset provides Kubernetes cluster level monitoring and collects from the following inputs. 
    - kubelet systemd service.
    - portworx systemd service.
    - portworx container logs.
    - docker service logs.
- Logging data is enriched by use of the `kubernetes_metadata` plugin. 
