# create local swarm managed by Char
docker swarm init --advertise-addr $(docker-machine ip Char)
