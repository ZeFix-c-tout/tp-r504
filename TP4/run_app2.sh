set -x
docker run -d \
    --name tp4-app-dev \
    -p 5500:5000 \
    --network net-tp4 \
    -v $(pwd)/srv:/srv \
im-tp4-dev


