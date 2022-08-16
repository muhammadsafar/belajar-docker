docker volume create mongodata

docker volume create mysqldata

docker container create --name mongovolume --publish 27020:27017  --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=musa --env MONGO_INITDB_ROOT_PASSWORD=musa mongo:latest 

-->mysql

docker container create --name mysqlvol --publish 23306:3306 --mount "type=volume,source=mysqldata,destination=/var/lib/mysql" -e MYSQL_ROOT_PASSWORD=musa mysql:latest 

or 

docker container create --name mysqlvol --publish 23306:3306  -v mysqldata:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=musa mysql:latest

docker container start mysqlvol

docker container stop mysqlvol

docker container rm mysqlvol
