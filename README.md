sudo docker build -t gabrielogregorio/gitops:latest .

sudo docker run --rm -p 3333:3333  gabrielogregorio/gitops:latest

docker login


sudo docker push gabrielogregorio/gitops:latest


https://kind.sigs.k8s.io/docs/user/quick-start#installing-from-release-binaries


kind create cluster --name=gitops

-> sudo kubectl cluster-info --context kind-gitops

----------

aplicar os arquivos no kubernet local

kubectl apply -f k8s/


ver

kubectl get deploy


kubectl get svc
