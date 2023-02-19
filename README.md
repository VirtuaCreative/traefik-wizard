# Proxy Wizard

Proxy Wizard was created to launch [Traefik Proxy](https://traefik.io/traefik/) on a Kubernetes
cluster by running one single script.

## Why Proxy Wizard

Instead of having to copy and paste all the resource
files manually from the [official docs](https://doc.traefik.io/traefik/getting-started/quick-start-with-kubernetes/)
to launch Traefik Proxy Dashboard and to use it as a reverse proxy to a web application,
run a single script to copy the files into a directory of our
choice and apply them to an existing cluster.

## How to

Read the [documentation](docs/install.md) and/or watch the [video tutorial](https://youtu.be/JaTITCVcUn0).

## Requirements

On your computer, you need:

- Docker installed.
- A Kubernetes cluster.

Working environment:

- Darwin v13.0 - v13.1
- Minikube v1.28.0 - v1.29.0
- Docker v20.10.20 - v20.10.22
- Kubernetes v1.25.3 - v1.26.1
- kubectl v1.25.4

For other configurations, you may need other dependencies.

## Going forward

Once installed, you can customize the resource files according to your needs.
