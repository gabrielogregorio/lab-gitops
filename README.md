sudo docker build -t gabrielogregorio/gitops:latest .

sudo docker run --rm -p 3333:3333  gabrielogregorio/gitops:latest

docker login


sudo docker push gabrielogregorio/gitops:latest
