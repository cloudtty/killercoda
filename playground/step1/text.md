> Cloudtty is  an easy-to-use K8s operator essentially, it must be running in an existing cluster.
> So first of all, we need to create a cluster by a lightweigth cluster deployment tool named `Kind`.

First, let's download the binary of Kind into current directory:

```plain
curl -Lo /usr/bin/kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64 && chmod +x /usr/bin/kind
```{{exec}}

Then, create a cluster by Kind:

```plain
KIND_EXPERIMENTAL_PROVIDER=docker kind create cluster --kubeconfig kind.config
export KUBECONFIG=$PWD/kind.config
```{{exec}}
