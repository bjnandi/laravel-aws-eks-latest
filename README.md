kubectl apply -f deployment.yaml

kubectl expose deployment laravel --type=NodePort --name=laravel-service
