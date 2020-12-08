# launch nginx container in background, called 'overlord', able to restart itself
# its port 80 attached to port 5000 of Char
docker run -d --name overlord --restart always -p 5000:80 nginx
