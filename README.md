# Proxy Wizard

This repo contains the resource files to launch Traefik Proxy on a Kubernetes cluster
and a script to copy the files and apply them at once.

For now, to make our lives easier, instead of having to copy and paste all the resource
files manually from the [official docs](https://doc.traefik.io/traefik/getting-started/quick-start-with-kubernetes/)
to launch Traefik Proxy Dashboard and to use it as a reverse proxy to a web app,
I created a very simple script to copy the files into a directory of our
choice and apply them to an exixting cluster.

Usage: TBA.

I might add other resource files and scripts in the future.

ENV: Minikube v1.28.0 / Docker 20.10.20 / Kubernetes v1.25.3 / kubectl v1.25.4 / Darwin 13.0.1
