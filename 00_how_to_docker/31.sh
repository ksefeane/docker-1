# force quit & delete all services of local swarm
docker service rm $(docker service ls -q)
