docker volume create mysqlrestore 

docker container run --rm --name ubunturestore --mount "type=bind,source=/e/Bismillah/mygit/udemy/docker/backup,destination=/backup" -v mysqlrestore:/data ubuntu:latest bash -c "cd /data && tar xvf /backup/backup-lagi.tar.gz --strip 1" 


* backup cvf
exract xvf

docker container create --name mysqlrestore --publish 33306:3306  -v mysqlrestore:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=musa mysql:latest