#!/bin/bash

#Change the settings in correct way to environment

#Web server IP address
WEBSERVER="192.168.0.1"

#Prism Central Administrator
PCUSER="admin"

#Prism Central Password
PCPASS="password"

#VLAN Name is a network you want to use
VLANNAME="default"

#Storage Cointainer to put the airgap
STORAGECONTAINER="SelfServiceContainer"

#Cluster Name
CLUSTERNAME="CLUSTER1"

#Prism Element Username admin
PEUSER="admin"

#Prism Element Password admin
PEPASS="admin"


cd .karbon

#Login to karbon
./karbonctl login --pc-username $PCUSER --pc-password $PCPASS cc

#Instructions to conect for create an airgap vm
./karbonctl airgap enable --webserver-url http://$WEBSERVER/ntnx-2.0.0/ --vlan-name $VLANNAME --storage-container $STORAGECONTAINER --pe-cluster-name $CLUSTERNAME --pe-username $PEUSER --pe-password $PEPASS
