kubectl delete secret nexus-secret
kubectl create secret tls nexus-secret \
    --cert nexus.crt  --key nexus.key 
