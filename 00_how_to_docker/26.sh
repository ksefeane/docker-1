# launch a service named engineering-bay on overmind network. 42school/engineering-bay
# must have 2 replicas
docker service create -d --name engineering-bay --network overmind --replicas 2 -e OC_USERNAME=admin -e OC_PASSWD=admin 42school/engineering-bay
