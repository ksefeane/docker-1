# make Aiur a slave of local swarm, lead by Char
docker-machine ssh Aiur "docker swarm join --token $(docker swarm join-token worker -q) $(docker-machine ip Char):2377"

