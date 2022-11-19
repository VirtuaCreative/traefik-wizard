# Proxy Wizard

This repo contains the resource files to launch Traefik Proxy on a Kubernetes cluster.

To make our lives easier, instead of having to copy and paste
them manually from the [official docs](https://doc.traefik.io/traefik/getting-started/quick-start-with-kubernetes/),
I created a very simple script to copy the files into a directory of our
choice and apply them to an exixting cluster.

ENV: Minikube v1.28.0 / Docker 20.10.20 / Kubernetes v1.25.3 / kubectl v1.25.4 / Darwin 13.0.1
