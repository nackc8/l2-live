FROM debian

# TODO: Helskumt

RUN apt update && apt install -y tree
COPY ./oftaandrad /
COPY ./sallanandrad /
RUN cat /oftaandrad >from_oftaandrad
RUN cat /sallanandrad >from_sallanandrad

CMD ["bash"]
