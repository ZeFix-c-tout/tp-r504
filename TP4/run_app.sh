docker run --rm -d \
	-v vol-sql-demo:/var/lib/mysql \
	--name tp4-app \
	-p 5000:5000 \
	--network net-tp4 \
	--env MYSQL_ROOT_PASSWORD=foo \
mysql:8.0
