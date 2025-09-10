# lancement serveur sql
docker run --rm -d \
	-v vol-sql-demo:/var/lib/mysql \
	--name tp4-sql \
	-p 3307:3306 \
	--network net-tp4 \
	--env MYSQL_ROOT_PASSWORD=foo \
mysql:8.0

#docker run - --rm -d -v vol-sql-demo:/var/lib/mysql  --name tp4-sql   --env MYSQL_ROOT_PASSWORD=foo   --network net-tp4   mysql:8.0
