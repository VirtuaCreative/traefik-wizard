#!/bin/bash

mkdir traefik

curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-scripts/main/kube/00-role.yml > traefik/traefik-rbac-role.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-scripts/main/kube/00-account.yml > traefik/traefik-service-account.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-scripts/main/kube/01-role-binding.yml > traefik/traefik-role-binding.yml
curl -s  https://raw.githubusercontent.com/VirtuaCreative/traefik-scripts/main/kube/02-traefik.yml > traefik/traefik-deployment.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-scripts/main/kube/02-traefik-services.yml > traefik/traefik-services.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-scripts/main/kube/03-whoamI-services.yml > traefik/traefik-app-services.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-scripts/main/kube/03-whoami.yml > traefik/traefik-app-deployment.yml
curl -s https://raw.githubusercontent.com/VirtuaCreative/traefik-scripts/main/kube/04-whoami-ingress.yml > traefik/traefik-app-ingress.yml

kubectl apply -f traefik/traefik-rbac-role.yml \
              -f traefik/traefik-service-account.yml \
              -f traefik/traefik-role-binding.yml \
              -f traefik/traefik-deployment.yml \
              -f traefik/traefik-services.yml \
              -f traefik/traefik-app-services.yml \
              -f traefik/traefik-app-deployment.yml \
              -f traefik/traefik-app-ingress.yml
