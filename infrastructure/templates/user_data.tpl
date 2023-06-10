#!/bin/bash
apt update
curl -L https://storage.googleapis.com/kubernetes-release/release/${kubectl_version}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
chmod a+x /usr/local/bin/kubectl
apt -y install podman podman-docker
touch /etc/containers/nodocker
curl -L https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 -o /usr/local/bin/minikube
chmod a+x /usr/local/bin/minikube
sudo -u ubuntu -- minikube start
sudo -u ubuntu -- kubectl create deployment hello-minikube --image=eilidhmae/app-demo:latest
sudo -u ubuntu -- kubectl expose deployment hello-minikube --type=LoadBalancer --port=5000 --target-port=5000
cat >/root/demo.sh << "EOF"
sudo -u ubuntu -- nohup minikube tunnel &>/dev/null &
sleep 30
sudo -u ubuntu -- nohup kubectl port-forward --address 0.0.0.0 svc/hello-minikube 8080:5000 &>/home/ubuntu/port-forward.log &
EOF
chmod a+x /root/demo.sh
/root/demo.sh
