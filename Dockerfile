FROM ubuntu:22.04
LABEL maintainer="Julian Nonino <noninojulian@gmail.com>"

ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apt-get update && \
    apt-get install -y tzdata make texlive-full=2021.20220204-1 latexmk=1:4.76-1 biber=2.17-2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
