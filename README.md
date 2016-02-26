# docker-teamcity-ci

Simple TeamCity setup. You can start an TeamCity server instance and one (default) or more TeamCity agents with docker and jet installed.
The agent use the docker daemon from the host.


TeamCity: [https://www.jetbrains.com/teamcity/](https://www.jetbrains.com/teamcity/)
docker: [https://www.docker.com/products/docker-engine](https://www.docker.com/products/docker-engine)
jet: [https://codeship.com/documentation/docker/installation/#jet](https://codeship.com/documentation/docker/installation/#jet)
docker in docker: [http://container-solutions.com/running-docker-in-jenkins-in-docker/](http://container-solutions.com/running-docker-in-jenkins-in-docker/)

## requirements

The host have to run docker version 1.10.2 or higher and must be a ubuntu wily release. If you like to run other OS versions please check in the `docker-compose.yml` the volume `/lib/x86_64-linux-gnu/libdevmapper.so.1.02.1`.

## start

`docker-compose build --no-cache && docker-compose up -d --force-recreate`

Visit and configure TeamCity on `http://<your-host>:8111`.

## scaling

`docker-compose scale agent-docker=2`

    You have to add the agents manuel to the *Connected* pool.

## restart

`docker-compose stop && docker-compose rm -f -v && docker-compose build --no-cache && docker-compose up -d --force-recreate`

## stop

`docker-compose stop && docker-compose rm -f -v`

## data store

The files are saved on the host at `/var/lib/teamcity` and are simply to backup.
