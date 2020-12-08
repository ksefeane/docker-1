# force quit & delete all containers
docker container rm -f $(docker container ls -a -q)
