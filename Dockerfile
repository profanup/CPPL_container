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
    
# Install Haskeell Platform 
RUN apt-get update && \
    apt-get install -y haskell-platform && \
    apt-get install -y nano vim && \
    ghci --version


# Install JDK and JRE from ubuntu repository
RUN apt-get install -y openjdk-11-jdk openjdk-11-jre && \
    export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && \
    echo JAVA_HOME && \
    export PATH=$PATH:$JAVA_HOME/bin && \
    echo $PATH

