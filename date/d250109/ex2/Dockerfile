# Startar från Ubuntu-basimage
FROM ubuntu:latest

# Uppdaterar paketlistan och installerar Python
RUN apt-get update && apt-get install -y python3

# Kopierar applikationsfiler till containern
COPY . /app

RUN apt-get install -y tree

# Definierar det kommando som körs när containern startar
CMD ["python3", "/app/app.py"]
