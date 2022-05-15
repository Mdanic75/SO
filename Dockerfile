FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
      apt-get -y install sudo
WORKDIR /code/
COPY code /code/
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN sudo apt install nano
USER docker
