FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

COPY update.py /usr/bin/update.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
