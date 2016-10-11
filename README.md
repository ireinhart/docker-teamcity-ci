# JetBrains TeamCity CI with an agent that contains docker and jet

## requirements

The host has to run docker version 1.10.2 or later and can be an ubuntu wily or xenial release. If you like to run other OS versions please check the `docker-compose.yml` for volume `/lib/x86_64-linux-gnu/libdevmapper.so.1.02.1`.
For a simpler container management please use *docker-compose* version 1.6.2 or later to start/stop and build the "app".

## start

`docker-compose build --no-cache && docker-compose up -d --force-recreate`

    Visit and configure TeamCity on `http://<your-host>:8111`.
    
    You have to add the agents manuelly to the *Connected* pool.

## scaling

`docker-compose scale agent-docker-jet=2`


## restart

`docker-compose stop && docker-compose rm -f -v && docker-compose up -d --force-recreate --no-build`

## stop

`docker-compose stop && docker-compose rm -f -v`

## data store

The files are saved on the host at `/var/lib/teamcity` and can be easily copied for backup.
