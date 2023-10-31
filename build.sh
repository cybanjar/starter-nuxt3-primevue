docker build -f ./deploy/Dockerfile -t $1:$2 --platform linux/amd64 .
docker save -o $1.tar $1:$2
scp $1.tar root@103.84.207.234:/home/prime