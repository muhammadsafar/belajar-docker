ada 3 tipe network driver 

1. bridge
2. host
3. none


docker network ls

docker network create --driver bridge contohnetwork


docker network rm contohnetwork

*network cannot to delete if used by container 