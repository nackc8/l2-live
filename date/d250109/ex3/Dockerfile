FROM ubuntu:24.04

WORKDIR /app

RUN apt-get update

RUN apt-get install -y imagemagick

COPY process.sh .



CMD ["./process.sh", "infinity"]
