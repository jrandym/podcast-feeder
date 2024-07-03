FROM ubuntu:latest

RUN apt update && apt install -y \
    python3-full \
    python3-pip \
    git

RUN  pip install PyYAML-6.0.1 

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
