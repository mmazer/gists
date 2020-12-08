#### Limit to event reason
```
kubectl get events --field-selector reason=Unhealthy
```

#### Limit to event type
```
kubectl get events --field-selector type=Warning
```

#### Skip pod events
```
kubectl get events --field-selector involvedObject.kind!=Pod
```

#### Node Events
```
kubectl get events --field-selector involvedObject.kind=Node
```
