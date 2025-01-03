#Download base image ubuntu 18.04
FROM ubuntu:18.04

# LABEL about the custom image
LABEL maintainer="anup.kunte@gmail.com"
LABEL version="0.2"
LABEL description="This is custom Docker Image for \
the softwares to be used in CPPL workshop."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Install GCC and G++ and make
RUN apt-get update && \
    apt-get install -y build-essential manpages-dev && \
    gcc --version
