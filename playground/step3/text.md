Now we will create a cloudtty instance, what a exciting moment!

```plain
kubectl apply -f https://raw.githubusercontent.com/cloudtty/cloudtty/v0.5.0/config/samples/local_cluster_v1alpha1_cloudshell.yaml
```{{exec}}

By default, it will create a cloudtty pod and expose the NodePort service. Alternatively, Cluster-IP, Ingress, and Virtual Service(for Istio) are all supported as exposureMode.

Let's observe CR status to obtain its web access url:

```plain
kubectl get cloudshell -w
```{{exec}}

<br>

When the status of cloudshell changes to Ready and the URL field appears, copy and paste the URL on your browser to access the cluster with kubectl.
