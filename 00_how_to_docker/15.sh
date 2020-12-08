# launch phpmyadmin container in the background, named 'roach-warden'.
# its port 80 bound to port 8081 of VM. it should explore db in 'spawning-pool'
docker run -d --name roach-warden -p 8081:80 --link spawning-pool:db phpmyadmin
