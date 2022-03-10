FROM golang:latest
MAINTAINER ed Howland ed.howland@gmail.com
RUN apt update -y && apt upgrade -y
RUN apt install -y curl wget git
RUN mkdir -p  /root/hugo /root/bin /work
RUN cd /root/hugo && wget https://github.com/gohugoio/hugo/releases/download/v0.93.2/hugo_0.93.2_Linux-64bit.tar.gz
RUN cd /root/hugo && tar zxf  hugo_0.93.2_Linux-64bit.tar.gz
RUN mv /root/hugo/hugo /usr/local/bin
WORKDIR /work
# This does not work. Use the following docker command 
# cd ./hugo/A_Gentle_Intro_to_BNF
# docker run --rm -it -v ${PWD}:/work -p:8080:1313 <image-name> hugo server --bind 0.0.0.0 -D
CMD /usr/local/bin/hugo server --bind 0.0.0.0 -D
