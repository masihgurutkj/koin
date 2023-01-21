FROM ubuntu:20.04
MAINTAINER PakManto masihgurutkj@gmail.com
RUN apt-get update
RUN apt-get -y install wget openssh-server screen
RUN mkdir /home/kripto
RUN cd /home/kripto
RUN wget https://github.com/mintme-com/miner/releases/download/v2.8.0/webchain-miner-2.8.0-linux-amd64.tar.gz
RUN tar -xzvf webchain-miner-2.8.0-linux-amd64.tar.gz --directory /home/kripto/
WORKDIR /home/kripto
RUN screen -R mintme
RUN cd /home/kripto
RUN chmod +x webchain-miner
VOLUME /home/kripto
