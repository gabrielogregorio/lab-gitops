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

=========

install argo

https://argo-cd.readthedocs.io/en/stable/

sudo kubectl create namespace argocd
sudo kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml


=======

sudo kubectl get all -n argocd


========

sudo kubectl port-forward svc/argocd-server -n argocd 8080:443



https://argo-cd.readthedocs.io/en/stable/cli_installation/


https://argo-cd.readthedocs.io/en/stable/getting_started/


obter senha com login admin => sudo argocd admin initial-password -n argocd



no argo:
new app
project name : default
aplication service: projeto-gitops
sync policy: se for manual, o argo avisa, automatico, ele muda sozinho. Vamos deixar manual

===

source: repo git.
pasta k8s
destination: cluster default
namespace: default

ele precebe que estamos usnado o customize