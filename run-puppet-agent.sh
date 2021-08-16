#!/bin/bash
#docker run --rm --net compose-services_default --hostname abcd-xyzzz-$RANDOM puppet/puppet-agent-ubuntu:5.0.0 $1

## store dummy docker container name to run puppet again..
## takes environment as an arg.
random_name=puppet-session-$RANDOM;docker run --net compose-services_default --hostname $random_name --name $random_name puppet/puppet-agent-ubuntu:5.0.0 agent -tv --environment usecase_3

## run previously ran puppet again
docker start -a $random_name

## to go inside container you ran last, commit the container and run it again
docker commit $random_name dummy:1
doker run -it --entrypoint bash dummy:1

