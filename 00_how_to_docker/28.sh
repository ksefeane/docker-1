# launch service 42school/marine-squad named marines, in 2 replicas named marines
docker service create -d --name marines --network overmind --replicas 2 -e OC_USERNAME=admin -e OC_PASSWD=admin 42school/marine-squad
