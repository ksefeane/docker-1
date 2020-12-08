# launch rabbitmq service named orbital-command on overmind network 
# define user & password
docker service create -d --name orbital-command --network overmind -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=admin rabbitmq
