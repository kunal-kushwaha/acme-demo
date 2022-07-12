#!/bin/bash

# install k3s
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.24.2+k3s2 sh -

# install helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

# add .bashrc helper stuff (kubectl auto-completion etc)
echo 'source <(kubectl completion bash)' >>~/.bashrc
echo 'alias k=kubectl' >>~/.bashrc
echo 'complete -o default -F __start_kubectl k' >>~/.bashrc