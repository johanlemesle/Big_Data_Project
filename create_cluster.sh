#!/bin/bash

source cluster.conf

# Create synced folder
mkdir shared
echo "Folder shared created !"

# Create k3s cluster
SERVER_IP=$SERVER_IP AGENT2_IP=$AGENT2_IP AGENT1_IP=$AGENT1_IP vagrant up
echo "Cluster K3S created !"

exit 0