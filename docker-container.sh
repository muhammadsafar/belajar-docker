
docker container ls -a 

docker container ls

docker container create --name contohredis redis:latest

docker container start contohredis

docker container stop contohredis

docker container rm contohredis

docker run -d -p 27017:27017 --name test-mongo mongo:latest 