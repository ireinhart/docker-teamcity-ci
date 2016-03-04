# docker-teamcity-ci

Simple TeamCity setup. You can start an TeamCity server instance and one (default) or more TeamCity agents with docker and jet installed.
The agent uses the docker daemon from the host.

TeamCity: [https://www.jetbrains.com/teamcity/](https://www.jetbrains.com/teamcity/)
docker: [https://www.docker.com/products/docker-engine](https://www.docker.com/products/docker-engine)
jet: [https://codeship.com/documentation/docker/installation/#jet](https://codeship.com/documentation/docker/installation/#jet)
docker in docker: [http://container-solutions.com/running-docker-in-jenkins-in-docker/](http://container-solutions.com/running-docker-in-jenkins-in-docker/)

## requirements

The host has to run docker version 1.10.2 or later and must be an ubuntu wily release. If you like to run other OS versions please check the `docker-compose.yml` for volume `/lib/x86_64-linux-gnu/libdevmapper.so.1.02.1`.
For a simpler container management please use *docker-compose* version 1.6.2 or later to start/stop and build the "app".

## start

With images from hub.docker.com:

`docker-compose pull && docker-compose up -d --force-recreate --no-build`

or build and start your own images:

`docker-compose build --no-cache && docker-compose up -d --force-recreate`

    Visit and configure TeamCity on `http://<your-host>:8111`.
    
    You have to add the agents manuelly to the *Connected* pool.

## scaling

`docker-compose scale agent-docker=2`


## restart

`docker-compose stop && docker-compose rm -f -v && docker-compose up -d --force-recreate --no-build`

## stop

`docker-compose stop && docker-compose rm -f -v`

## data store

The files are saved on the host at `/var/lib/teamcity` and can be easily copied for backup.

## credits

Most work was done by [https://github.com/sjoerdmulder/teamcity-docker](https://github.com/sjoerdmulder/teamcity-docker). Visit his repository for more information about the TeamCity server image.
