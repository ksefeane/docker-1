# launch wordpress container in background, named 'lair'.
# its port 80 bound to port 8080 of VM, able to use 'spawning-pool' database
docker run -d --name lair -p 8080:80 --link spawning-pool:mysql wordpress
