# minecraft-server-docker-build

## start build
```
docker build -t minecraft-server:latest .
```
## start container
```
docker run --name minecraft-server -d -p 25565:25565 minecraft-server:latest
```
