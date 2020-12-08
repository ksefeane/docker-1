# get internal IP address of 'overlord' container
docker inspect -f '{{.NetworkSettings.IPAddress}}' overlord
