# display realtime logs of engineering-bay service
docker service logs -f $(docker service ps engineering-bay -f "name=engineering-bay.1" -q)
