FROM debian

RUN apt update && apt install -y tree
COPY ./oftaandrad /
COPY ./sallanandrad /
RUN cat /oftaandrad >hoppsan

CMD ["bash"]
