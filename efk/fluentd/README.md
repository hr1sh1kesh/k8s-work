# Fluentd podspecs. 

These fluentd podspecs are used in a kubernetes cluster which uses Portworx as the Software defined storage solution. Portworx allows you to manage your application data in a Cloud native manner. 

## Pre-requisites
- An IAM user with `AWS Access Key ID` and `secret Key id`.
- An `s3 bucket` with access to the IAM user to publish logs to this bucket. (There is a sample `s3-bucket-policy` in this repo which could be used)

The fluentd deamonset uses an init container within the Pod which extracts the unique clusterID of the Portworx cluster. This is used as the prefix for the folder name in the S3 bucket. 