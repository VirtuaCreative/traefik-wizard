#!/bin/bash

WAVE='\360\237\221\213'
TADA='\360\237\216\211'

printf "Hello, $USER! $WAVE \n"
echo "Welcome to the Proxy Wizard! Let's make some magic!"
echo "Creating Kubernetes resources for Traefik under ./traefik/..."

mkdir traefik

curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-wizard/main/proxy-kube-resources/traefik-rbac-role.yml > traefik/traefik-rbac-role.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-wizard/main/proxy-kube-resources/traefik-service-account.yml > traefik/traefik-service-account.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-wizard/main/proxy-kube-resources/traefik-role-binding.yml > traefik/traefik-role-binding.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-wizard/main/proxy-kube-resources/traefik-dashboard-deployment.yml > traefik/traefik-dashboard-deployment.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-wizard/main/proxy-kube-resources/traefik-services.yml > traefik/traefik-services.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-wizard/main/proxy-kube-resources/traefik-app-services.yml > traefik/traefik-app-services.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-wizard/main/proxy-kube-resources/traefik-app-deployment.yml > traefik/traefik-app-deployment.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-wizard/main/proxy-kube-resources/traefik-app-ingress.yml > traefik/traefik-app-ingress.yml

echo "Applying the new resources to your cluster..."

kubectl apply -f traefik/traefik-rbac-role.yml \
              -f traefik/traefik-service-account.yml \
              -f traefik/traefik-role-binding.yml \
              -f traefik/traefik-dashboard-deployment.yml \
              -f traefik/traefik-services.yml \
              -f traefik/traefik-app-services.yml \
              -f traefik/traefik-app-deployment.yml \
              -f traefik/traefik-app-ingress.yml

TF_PR_DS=$(kubectl get services | grep traefik-dashboard-service | cut -d " " -f 1)
HELLOWORLD=$(kubectl get services | grep hello-world | cut -d " " -f 1)

echo `tput bold`"$ kubectl get services"`tput sgr0` ; kubectl get services

if [[ TF_PR_DS=="traefik-dashboard-service" ]]; then
    echo `tput bold`"Traefik Proxy Dashboard"`tput sgr0` "is up and running."
    if [[ HELLOWORLD=="hello-world" ]]; then
        echo `tput bold`"hello-world"`tput sgr0` "is up and running."
    fi
    printf `tput bold`"You're good to go! Woot! $TADA \n"`tput sgr0`
else
    echo "Something went wrong. Please try the manual method."
fi 
