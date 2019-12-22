TAG="3.8.2"

docker build -t bastiaanschonhage/rabbitmq-base:$TAG base
docker build -t bastiaanschonhage/rabbitmq-server:$TAG server
