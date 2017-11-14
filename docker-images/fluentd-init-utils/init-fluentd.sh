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

if [[ -n "$2" ]]; then
ELASTICSEARCH_HOST=$2
else
ELASTICSEARCH_HOST= #Enter the Default ES Host
fi

if [[ -n "$3" ]]; then
ELASTICSEARCH_PORT=$3
else
ELASTICSEARCH_PORT= #Enter the Default ES Port
fi

echo $AWS_KEY_ID
echo $AWS_SECRET_KEY_ID
echo $S3_BUCKET

sed -i "s/#indexUUID#/$indexID/g" /tmp/fluent.conf
sed -i "s/#ELASTICSEARCH_PORT#/$ELASTICSEARCH_PORT/g" /tmp/fluent.conf
sed -i "s/#ELASTICSEARCH_HOST#/$ELASTICSEARCH_HOST/g" /tmp/fluent.conf
sed -i "s/#AWS_KEY_ID#/$AWS_KEY_ID/g" /tmp/fluent.conf
sed -i "s/#AWS_SECRET_KEY_ID#/$AWS_SECRET_KEY_ID/g" /tmp/fluent.conf
sed -i "s/#S3_BUCKET#/$S3_BUCKET/g" /tmp/fluent.conf
sed -i "s/#FLUENT_USER#/$FLUENT_USER/g" /tmp/fluent.conf
sed -i "s/#FLUENT_PASSWORD#/$FLUENT_PASSWORD/g" /tmp/fluent.conf

cat /tmp/fluent.conf
