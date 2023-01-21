Mintme mining on Ubuntu Docker 
------------------------------
~$ apt install docker-ce

~$ git clone https://github.com/masihgurutkj/koin.git

~$ cd koin 

~$ docker build --no-cache --force-rm -t ubuntu:mintme .

~$ docker run -d -p 2121:22 --name mintme -it ubuntu:mintme /bin/bash

~$ docker exec -it mintme /bin/bash

~$ chmod +x mintme

~$ ./mintme
