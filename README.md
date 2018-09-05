# docker-kafka

https://kafka.apache.org/downloads

## Build

```console
sudo docker build -t dockter/kafka:0.1 .
```

## Run

```console
sudo docker run -i -t dockter/kafka:0.1 /bin/bash
```

## Push to Docker Hub

[dockter/kafka](https://hub.docker.com/r/dockter/kafka/)

```console
sudo docker login
sudo docker push dockter/kafka:0.1
```