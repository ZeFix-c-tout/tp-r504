set -x
docker run -d \
	--name tp4-app \
	-p 5000:5000 \
	--network net-tp4 \
im-tp4
