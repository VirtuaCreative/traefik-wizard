# Proxy Wizard

Proxy Wizard was created to launch [Traefik Proxy](https://traefik.io/traefik/) on a Kubernetes cluster by running one single script.

## Why Proxy Wizard

Instead of having to copy and paste all the resource
files manually from the [official docs](https://doc.traefik.io/traefik/getting-started/quick-start-with-kubernetes/)
to launch Traefik Proxy Dashboard and to use it as a reverse proxy to a web app,
run a script to copy the files into a directory of our
choice and apply them to an existing cluster.

## Requirements

On your computer, you need:

- Docker installed.
- A Kubernetes cluster to install the Traefik Proxy on.

For some environments, you may need unforeseen dependencies. The environment that this process works seamlessly is:

- Darwin 13.0. - 13.1
- Minikube v1.28.0 - v1.29.0
- Docker 20.10.20 - 20.10.22
- Kubernetes v1.25.3 - v1.26.1
- kubectl v1.25.4

## How to

Read the [documentation](docs/install.md).

## Going forward

Once installed, you can customize the resource files according to your needs.

## Assets

- [Docker image](https://hub.docker.com/r/ramosmd/html-hello-world)
- [GH repo](https://github.com/VirtuaCreative/html-hello-world)
