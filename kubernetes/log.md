### Get all logs for deployment or daemonset

```
kubectl -n <namespace> logs -f deployment/<app-name> --all-containers=true --since=10m
```

```
kubectl -n kube-system logs -f daemonsets/fluentd-gcp-v3.1.1 --all-containers=true
```

### Get all logs for pods
```
kubectl -n default logs -l app=pushapp --all-containers
```

vim: ft=markdown :
