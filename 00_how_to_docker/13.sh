# print environment variables of 'spawning-pool'
docker inspect -f {{.Config.Env}} spawning-pool
