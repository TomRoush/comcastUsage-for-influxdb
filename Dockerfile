FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    python3 python3-pip \
    firefox-geckodriver \
    xvfb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /src

COPY . /src
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["python3", "-u", "/src/InfluxdbComcast.py"]
