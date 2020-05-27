```
$ mkdir cert
$ cp -p <certfile> cert/
$ docker build --build-arg CERT_FILE= --build-arg CERT_ALIAS= . 
or
$ docker-compose build
```
