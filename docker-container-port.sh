port forwarding, agar kita bisa akses dari host kita, misal 8080 akan diteruskan ke 80 milik port container nya

docker image pull nginx:latest

*nginx use port 80

docker container create --name contohnginx --publish 8080:80 nginx:latest