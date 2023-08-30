Once a Kind cluster ready, we can install Cloudtty into it.

It's recommend using helm to install Cloudtty, so we need to install helm first, along with kubectl:

```plain
curl -fsSL https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
curl -L -o /usr/bin/kubectl "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && chmod +x /usr/bin/kubectl
```{{exec}}

Install Cloudtty by helm chart:

```plain
helm repo add cloudtty https://cloudtty.github.io/cloudtty
helm repo update
helm install cloudtty-operator --version 0.5.0 cloudtty/cloudtty
```{{exec}}

After that check the Cloudtty pod status:

```plain
kubectl wait deployment cloudtty-operator-controller-manager --for=condition=Available=True
```{{exec}}
