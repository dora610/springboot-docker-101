# Docker commands
    docker build -t docker-springboot:1 .
    docker run -p 8080:8080 docker-springboot:1

## Running springboot application with external configs
    docker run -p 3000:3000 docker-springboot:1  --server.port=3000