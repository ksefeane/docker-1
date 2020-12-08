# delete all container images
docker image rm -f $(docker image ls -a -q)
