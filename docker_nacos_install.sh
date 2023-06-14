
---------------------------------------------------
docker run -d \
--net=host \                   
-e PREFER_HOST_MODE=192.168.79.11 \
-e MODE=standalone \
-e SPRING_DATASOURCE_PLATFORM=mysql \
-e MYSQL_SERVICE_HOST=192.168.79.21 \
-e MYSQL_SERVICE_PORT=3306 \
-e MYSQL_SERVICE_USER=nacos_user1 \
-e MYSQL_SERVICE_PASSWORD=11111 \
-e MYSQL_SERVICE_DB_NAME=nacos_config \
-e NACOS_AUTH_ENABLE=true \
-p 8848:8848 \
--name nacos \
--restart=always \
nacos/nacos-server:1.2.1



