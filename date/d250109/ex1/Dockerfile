# Startar från Ubuntu-basimage
FROM ubuntu:latest

# Uppdaterar paketlistan och installerar Python
RUN apt-get update && apt-get install -y python3

RUN apt-get install -y tree

RUN apt-get install -y imagemagick

# Definierar det kommando som körs när containern startar
CMD ["sleep", "infinity"]
