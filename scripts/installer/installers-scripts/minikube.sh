#!/usr/bin/env bash

if [ -f /usr/bin/minikube ]; then
  return
fi

if [ ! -f /usr/local/bin/kubectl ]; then
  if [ ! -f /etc/apt/sources.list.d/kubernetes.list ]; then
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
  fi

  sudo nala update
  sudo nala install kubectl -y
fi

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv minikube /usr/bin/minikube
