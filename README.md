Mintme mining on Ubuntu Docker 
------------------------------
~$ apt install docker-ce

~$ docker build --no-cache --force-rm -t ubuntu:mintme .

~$ docker run -d -p 2121:22 --name mintme -it ubuntu:mintme /bin/bash

~$ docker exec -it mintme /bin/bash

~$ chmod +x mintme

~$ ./mintme
