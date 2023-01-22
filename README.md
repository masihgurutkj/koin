Mintme mining on Ubuntu Docker 
------------------------------
OPTION #1 (Installation Docker)

~$ sudo apt-get update

~$ sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

~$ sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

~$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

~$ sudo apt install docker-ce

~$ sudo usermod -aG docker ${USER}


OPTION #2 (Installation Build Image for Container)

~$ sudo git clone https://github.com/masihgurutkj/koin.git

~$ cd koin 

~$ docker build --no-cache --force-rm -t ubuntu:mintme .

~$ docker run -d -p 2020:22 --restart=unless-stopped --name mintme -it ubuntu:mintme /bin/bash

~$ docker exec -it mintme /bin/bash

OPTION #3 (Running for Mining)

~$ ./mintme
