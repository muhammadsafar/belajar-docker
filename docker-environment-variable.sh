docker image pull mongo:latest

docker container create --name contohmongo --publish 27018:27017 --env MONGO_INITDB_ROOT_USERNAME=musa --env MONGO_INITDB_ROOT_PASSWORD=musa mongo:latest

docker container create --name mysqlvol --publish 23306:3306 -e MYSQL_ROOT_PASSWORD=musa mysql:latest 