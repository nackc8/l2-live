FROM ubuntu:24.04

WORKDIR /app

RUN apt-get update

RUN apt-get install -y imagemagick

COPY process.sh .

RUN mkdir -p /grey/original /grey/modified

CMD ["./process.sh", "/grey/original", "/grey/modified"]
