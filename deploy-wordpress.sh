#!/bin/sh

# Deploy mysql
kubectl apply -f wordpress/secret-mysql.yaml
kubectl apply -f wordpress/pvc-wp-mysql.yaml
kubectl apply -f wordpress/deploy-wp-mysql.yaml
kubectl apply -f wordpress/service-wp-mysql.yaml

# Deploy wordpress
kubectl apply -f wordpress/pvc-wp.yaml
kubectl apply -f wordpress/deploy-wp.yaml
kubectl apply -f wordpress/service-wp.yaml