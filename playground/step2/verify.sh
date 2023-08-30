#!/bin/bash

kubectl --kubeconfig /root/kind.config get pods | grep 'controller-manager' | grep 'Running'