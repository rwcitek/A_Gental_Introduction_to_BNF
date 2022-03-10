FROM golang:latest
MAINTAINER ed Howland ed.howland@gmail.com
RUN apt update -y && apt upgrade -y
RUN apt install -y curl wget git
RUN mkdir -p  /root/hugo /root/bin /work
RUN cd /root/hugo && wget https://github.com/gohugoio/hugo/releases/download/v0.93.2/hugo_0.93.2_Linux-64bit.tar.gz
RUN cd /root/hugo && tar zxf  hugo_0.93.2_Linux-64bit.tar.gz
RUN mv /root/hugo/hugo /usr/local/bin
WORKDIR /work
CMD /usr/local/bin/hugo server -D
