export flag=$(cat flag.txt)

docker build . -t coffee
docker run --rm -p 8888:8080 coffee
