# create mysql container in background. able to restart itself
# stored in 'hatchery' volume, root password:'Kerrigan', database named 'zerglings'
#container name 'spawning-pool'
docker run -d --name spawning-pool --restart=on-failure -e MYSQL_DATABASE=zerglings -e MYSQL_ROOT_PASSWORD=Kerrigan -v hatchery:/var/lib/mysql mysql
