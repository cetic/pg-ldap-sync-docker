# pg-ldap-sync docker image

![Docker Automated](https://img.shields.io/docker/cloud/automated/ceticasbl/pg-ldap-sync) ![Docker Build](https://img.shields.io/docker/cloud/build/ceticasbl/pg-ldap-sync.svg)

## Description

This is the docker file you need to build the Docker image for the  [pg-ldap-sync](https://github.com/larskanis/pg-ldap-sync), the tool that helps synchronizing users, groups and their memberships from LDAP to PostgreSQL.

## How to use 

pg-ldap-sync uses a yaml configuration file that you need to mount to the docker container.

the config file should look like this: [config.yaml](config.yaml).

to mount and pass your config file you can use :

```
docker run -v /path/to/your/config.yaml:/path/inside/container/config.yaml -t pg-ldap-sync /path/inside/container/config.yaml -vv
```

here's an example that uses a config file called **config.yaml** that exists in a folder in **desktop** called **myfolder**, mounts it inside the container in this path **/var/lib/** and use it:


```
docker run -v Users/Desktop/myfolder/config.yaml:/var/lib/config.yaml -t pg-ldap-sync /var/lib/config.yaml -vv
```

