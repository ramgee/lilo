#docker login  먼저 실행할 것  
kubectl create secret -n devops generic docker-config --from-file=$HOME/.docker/config.json
kubectl create secret -n devops generic kube-config --from-file=$HOME/.kube/config
