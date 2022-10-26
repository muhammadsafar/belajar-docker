tahapan backup

1. matikan container

2. buat container dengan dua mount, volume yg ingin kita backup dan bing mount folder dari sysytem host

3. lakukan backup menggunakan container dengan cara meng archive is volume , dan disimpan di bind mount folder

4. isi file backup sekarang ada folder sisitem host
5. delete container yang kita gunakan untuk melakukan backup

==> cara 1

docker container stop mysqlvol

/e/Bismillah/mygit/udemy/docker/backup

docker container create --name backupvol --mount "type=bind,source=/e/Bismillah/mygit/udemy/docker/backup,destination=/backup" --mount "type=volume,source=mysqldata,destination=/data" nginx:latest

or 

docker container create --name backupvol --mount "type=bind,source=/e/Bismillah/mygit/udemy/docker/backup,destination=/backup" -v mysqldata:/data nginx:latest

masuk bash

docker container exec -i -t backupvol /bin/bash 

or 

docker exec -it backupvol sh


ls -l 

cd /data

ls -l

cd /backup

tar cvf /backup/backup.tar.gz /data

docker container stop backupvol

docker container rm backupvol

docker container start mysqlvol


=> cara dua dengan docker run

docker image pull ubuntu:latest, dipakai ubuntu agar yg bisa untuk sekali running

docker container stop mysqlvol

docker container run --rm --name ubuntubackup --mount "type=bind,source=/e/Bismillah/mygit/udemy/docker/backup,destination=/backup" -v mysqldata:/data ubuntu:latest bash -c "cd /backup && tar cvf /backup/backup-lagi.tar.gz /data" 


