FROM debian:latest

ENV TS#SERVER_LICENSE=accept

WORKDIR /home/teamspeak

EXPOSE 9987/udp 10011 30033

RUN apt-get update && apt-get upgrade -y && apt install wget bzip2 -y && \
		wget http://dl.4players.de/ts/releases/3.0.13.4/teamspeak3-server_linux_amd64-3.0.13.4.tar.bz2 && \
		tar -xvf teamspeak3-server_linux_amd64-3.0.13.4.tar.bz2

WORKDIR teamspeak3-server_linux_amd64

ENTRYPOINT sh ts3server_minimal_runscript.sh

# build image
# docker build -t teamspeak:debian /path/to/Dockerfile

# run image
# docker run --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 teamspeak:debian
