memberikan max limit memory dll untuk setiap container

byte, kilobyte, megabyte, gigabyte

1. memory => --memory 100m (100 megas)

2. cpu => --cpus 1,5 artinya bisa 1 setengah container

docker container create --name smallnginx --publish 8081:80 --memory 100m --cpus 0.5  nginx:latest
