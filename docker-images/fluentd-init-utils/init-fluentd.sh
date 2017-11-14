#!/bin/sh

#set -x
echo "Initializing..."

if [[ -n "$1" ]]; then
svcname=$1
else
svcname="portworx-service.kube-system.svc.cluster.local"
fi

echo $svcname

pxClusterStatus=$(curl -XGET http://$svcname:9001/v1/cluster/enumerate)

while [[ "$pxClusterStatus" = "" ]]
do
 echo "Waiting... looks like the px pods arent ready yet"
 sleep 1
 pxClusterStatus=$(curl -XGET http://$svcname:9001/v1/cluster/enumerate)
done

echo $pxClusterStatus

indexID=$(echo $pxClusterStatus | jq -r '.["Id"]+"-"+.["UID"]')
echo $indexID

sed -i "s/#indexUUID#/$indexID/g" /tmp/fluent.conf
sed -i "s/#AWS_KEY_ID#/$AWS_KEY_ID/g" /tmp/fluent.conf
sed -i "s~#AWS_SECRET_KEY_ID#~$AWS_SECRET_KEY_ID~g" /tmp/fluent.conf #Change the delimiter to ~ since the secret Key will contain a '/'
sed -i "s/#S3_BUCKET#/$S3_BUCKET/g" /tmp/fluent.conf

cat /tmp/fluent.conf
