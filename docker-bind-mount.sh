mounting / sharing file folder host ke container, 

untungnya adalah kita punya semacam backup jika container dihapus datanya masih tetap ada

add --mount

beberapa aturan mount:

a. type: tipe mount, bind atau volume
b. source : lokasi file folder di host
c. destination: lokasi file folder di container
d. readonly: jika ada maka hanya bisa readonly



docker container create --name mongodata --publish 27019:27017  --mount "type=bind,source=/e/Bismillah/mygit/udemy/docker/mongo-data,target=/data/db" --env MONGO_INITDB_ROOT_USERNAME=musa --env MONGO_INITDB_ROOT_PASSWORD=musa mongo:latest

*untuk mongodata terjadi exited 14 error ketika run stop container, 


docker container create --name smallmongodata --publish 27019:27017 --memory 100m --cpus 0.5  --env MONGO_INITDB_ROOT_USERNAME=musa --env MONGO_INITDB_ROOT_PASSWORD=musa mongo:latest


=> coba pakai mysql dan mounting container berhasil

docker container create --name mysqlmount --publish 13306:3306 --mount "type=bind,source=/e/Bismillah/mygit/udemy/docker/mysql-data,target=/var/lib/mysql" -e MYSQL_ROOT_PASSWORD=musa mysql:latest

untuk username automatic mysql = root