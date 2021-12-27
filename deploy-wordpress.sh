#!/bin/bash

KUBECONFIG_PATH="shared/k3s.yaml"

# Deploy mysql
kubectl apply -f wordpress/secret-mysql.yaml --kubeconfig $KUBECONFIG_PATH
kubectl apply -f wordpress/pvc-wp-mysql.yaml --kubeconfig $KUBECONFIG_PATH
kubectl apply -f wordpress/deploy-wp-mysql.yaml --kubeconfig $KUBECONFIG_PATH
kubectl apply -f wordpress/service-wp-mysql.yaml --kubeconfig $KUBECONFIG_PATH

# Deploy wordpress
kubectl apply -f wordpress/pvc-wp.yaml --kubeconfig $KUBECONFIG_PATH
kubectl apply -f wordpress/deploy-wp.yaml --kubeconfig $KUBECONFIG_PATH
kubectl apply -f wordpress/service-wp.yaml --kubeconfig $KUBECONFIG_PATH
