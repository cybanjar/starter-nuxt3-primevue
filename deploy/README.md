# Deployment

Look at the docs [Docker](https://docs.docker.com).

## Setup

add file build.sh in root folder
```bash
docker build -f ./deploy/Dockerfile -t $1:$2 --platform linux/amd64 .
docker save -o $1.tar $1:$2
scp $1.tar root@103.84.207.234:/home/prime
```

## Local

```bash
git pull
```

```bash
sh build.sh learning-development-fe latest
```


## Server

```bash
ssh root@103.84.207.234
```

```bash
docker load -i prime-fe.tar 
```

```bash
docker-compose up -d
```

```bash
docker ps -a
```
