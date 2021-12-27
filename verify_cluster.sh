#!/bin/sh

KUBECONFIG_PATH="shared/k3s.yaml"

echo Nodes\\n-----
kubectl get nodes -o wide --kubeconfig $KUBECONFIG_PATH

echo \\nPods in kube-system\\n------------
kubectl get pods -n kube-system -o wide --kubeconfig $KUBECONFIG_PATH
