#!/bin/bash
#1 - Start minikube 
minikube start

#2 - Instalação nginx ingress e aplicação
minikube addons enable ingress
sleep 15
kubectl create namespace svc-py && kubectl create namespace svc-js
helm install --generate-name svc-js-0.1.0.tgz
sleep 15
helm install --generate-name svc-py-0.1.0.tgz

#3 - Adicionar endpoints no hosts
k8s1=$(minikube ip)
k8s1+=" desafio-py.com"
k8s2=$(minikube ip)
k8s2+=" desafio-js.com"

echo $k8s1 | sudo tee -a /etc/hosts 
echo $k8s2 | sudo tee -a /etc/hosts
