#!/bin/bash

kubectl exec -it -n galera etcd0 -- etcdctl cluster-health
