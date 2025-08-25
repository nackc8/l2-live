FROM debian

RUN apt update && apt install -y cowsay

COPY ./main.bash /main

CMD ["/main"]
