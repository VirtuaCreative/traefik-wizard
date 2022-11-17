# Traefik Proxy on K8s

This reop contains the resource files to launch Traefik Proxy on a Kubernetes cluster.

To make our lives easier, instead of having to [copy and paste](https://doc.traefik.io/traefik/getting-started/quick-start-with-kubernetes/)
them manually, I created a very simple script to curl the files into a directory of our
choice and apply them to an exixting cluster.

My env: Minikube / Docker on macOS X
