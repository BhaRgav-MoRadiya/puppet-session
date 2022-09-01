
- Make sure to clone this repo. under /tmp as some paths a re hardcoded.
- start docker compose.
```
    bash pupperware/docker-up.sh
```
it should be healthy in 1-2 mins.

- use commands as below once puppet master is up
```
1). ## Run ubuntu container with puppet agent installed.

random_name=puppet-session-$RANDOM;docker run --net compose-services_default --hostname $random_name --name $random_name puppet/puppet-agent-ubuntu:5.0.0 agent -tv --environment usecase_3

2). ## run previously ran puppet again.This is same as running the puppet agent again in same ubuntu container.as docker start preserves the arguments.

docker start -a $random_name

3). ## to go inside container you ran last, commit the container and run it again

docker commit $random_name dummy:1
doker run -it --entrypoint bash dummy:1


```
