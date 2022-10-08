kubectl delete deploy backend-user
kubectl delete deploy backend-feed
kubectl delete deploy reverseproxy
kubectl delete deploy frontend

kubectl apply -f aws-secret.yaml
kubectl apply -f env-secrets.yaml
kubectl apply -f env-configmap.yaml

kubectl apply -f feed-deployment.yaml
kubectl apply -f feed-service.yaml
kubectl apply -f user-deployment.yaml
kubectl apply -f user-service.yaml
kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f reverseproxy-service.yaml
kubectl apply -f frontend-deployment.yaml
kubectl apply -f frontend-service.yaml
