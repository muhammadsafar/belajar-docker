docker network create --driver bridge mysqlnetwork

docker container create --name mysqldb --network mysqlnetwork -e MYSQL_ROOT_PASSWORD=musa mysql:latest

docker image pull adminer:latest => tool management 

docker container create --name adminer --publish 8090:8080 --network mysqlnetwork adminer:latest

docker container start mysqldb

docker container start adminer


docker network disconnect mysqlnetwork mysqldb

docker network connect mysqlnetwork mysqldb
